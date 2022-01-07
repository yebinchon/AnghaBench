
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {TYPE_1__* target; } ;
struct conn_query {scalar_t__ req_generation; TYPE_2__* requester; } ;
struct TYPE_4__ {scalar_t__ generation; int queries_ok; } ;
struct TYPE_3__ {struct conn_query* first_query; } ;


 int delete_conn_query (struct conn_query*) ;
 int waiting_queries ;
 int zfree (struct conn_query*,int) ;

int sqlp_becomes_ready (struct connection *c) {
  struct conn_query *q;

  while (c->target->first_query != (struct conn_query *)(c->target)) {
    q = c->target->first_query;

    if (q->requester->generation == q->req_generation) {

      q->requester->queries_ok++;
      waiting_queries--;
      delete_conn_query (q);
      zfree (q, sizeof (*q));
      break;
    } else {
      waiting_queries--;
      delete_conn_query (q);
      zfree (q, sizeof (*q));
    }
  }
  return 0;
}
