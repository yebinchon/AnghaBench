
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct conn_query {scalar_t__ req_generation; TYPE_2__* requester; } ;
struct TYPE_4__ {scalar_t__ generation; } ;
struct TYPE_3__ {scalar_t__ query_state; } ;


 TYPE_1__* SQLS_DATA (TYPE_2__*) ;
 int active_queries ;
 int assert (int) ;
 int delete_query (struct conn_query*) ;
 int expired_delayed_queries ;
 int expired_forwarded_queries ;
 int fprintf (int ,char*,struct conn_query*) ;
 scalar_t__ query_failed ;
 scalar_t__ query_wait_target ;
 int stderr ;
 scalar_t__ verbosity ;
 int waiting_queries ;

int delayed_query_timeout (struct conn_query *q) {
  if (verbosity > 0) {
    fprintf (stderr, "delayed query %p timed out\n", q);
  }
  if (q->requester && q->requester->generation == q->req_generation) {
    assert (SQLS_DATA(q->requester)->query_state == query_wait_target);
    SQLS_DATA(q->requester)->query_state = query_failed;
  }
  active_queries++;
  delete_query (q);
  waiting_queries--;
  expired_forwarded_queries++;
  expired_delayed_queries++;
  return 0;
}
