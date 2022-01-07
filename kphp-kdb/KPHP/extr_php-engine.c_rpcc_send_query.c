
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct connection {TYPE_1__* target; void* last_response_time; void* last_query_sent_time; } ;
struct conn_query {scalar_t__ req_generation; scalar_t__ extra; TYPE_2__* requester; } ;
struct TYPE_9__ {TYPE_3__* func; } ;
typedef TYPE_4__ net_send_ansgen_t ;
typedef int net_ansgen_t ;
struct TYPE_8__ {int (* send_and_finish ) (TYPE_4__*,struct connection*) ;} ;
struct TYPE_7__ {scalar_t__ generation; int queries_ok; } ;
struct TYPE_6__ {struct conn_query* first_query; } ;


 int delete_conn_query (struct conn_query*) ;
 int dl_assert (int ,char*) ;
 int pnet_query_answer (struct conn_query*) ;
 int pnet_query_delete (struct conn_query*) ;
 void* precise_now ;
 int stub1 (TYPE_4__*,struct connection*) ;
 int zfree (struct conn_query*,int) ;

int rpcc_send_query (struct connection *c) {

  c->last_query_sent_time = precise_now;
  c->last_response_time = precise_now;

  struct conn_query *q;
  dl_assert (c != ((void*)0), "...");
  dl_assert (c->target != ((void*)0), "...");

  while (c->target->first_query != (struct conn_query *)(c->target)) {
    q = c->target->first_query;
    dl_assert (q != ((void*)0), "...");
    dl_assert (q->requester != ((void*)0), "...");

    if (q->requester != ((void*)0) && q->requester->generation == q->req_generation) {
      q->requester->queries_ok++;

      net_ansgen_t *net_ansgen = (net_ansgen_t *)q->extra;

      net_send_ansgen_t *ansgen = (net_send_ansgen_t *)net_ansgen;
      ansgen->func->send_and_finish (ansgen, c);

      pnet_query_answer (q);
      pnet_query_delete (q);
      break;
    } else {

      delete_conn_query (q);
      zfree (q, sizeof (*q));
    }
  }
  return 0;
}
