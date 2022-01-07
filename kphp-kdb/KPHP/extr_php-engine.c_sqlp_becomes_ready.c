
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct connection {TYPE_1__* target; } ;
struct TYPE_8__ {int wakeup_time; } ;
struct conn_query {scalar_t__ req_generation; TYPE_2__ timer; TYPE_6__* requester; scalar_t__ extra; } ;
struct TYPE_10__ {TYPE_3__* func; } ;
typedef TYPE_4__ sql_ansgen_t ;
typedef int net_ansgen_t ;
struct TYPE_11__ {scalar_t__ generation; int queries_ok; } ;
struct TYPE_9__ {int (* ready ) (TYPE_4__*,struct connection*) ;} ;
struct TYPE_7__ {struct conn_query* first_query; } ;


 int create_pnet_query (TYPE_6__*,struct connection*,int *,int ) ;
 int delete_conn_query (struct conn_query*) ;
 int stub1 (TYPE_4__*,struct connection*) ;
 int zfree (struct conn_query*,int) ;

int sqlp_becomes_ready (struct connection *c) {
  struct conn_query *q;


  while (c->target->first_query != (struct conn_query *)(c->target)) {
    q = c->target->first_query;

    if (q->requester != ((void*)0) && q->requester->generation == q->req_generation) {

      q->requester->queries_ok++;


      net_ansgen_t *net_ansgen = (net_ansgen_t *)q->extra;
      create_pnet_query (q->requester, c, net_ansgen, q->timer.wakeup_time);

      delete_conn_query (q);
      zfree (q, sizeof (*q));

      sql_ansgen_t *ansgen = (sql_ansgen_t *)net_ansgen;
      ansgen->func->ready (ansgen, c);
      break;
    } else {

      delete_conn_query (q);
      zfree (q, sizeof (*q));
    }
  }
  return 0;
}
