
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct conn_query {TYPE_2__* outbound; } ;
struct TYPE_5__ {int unreliability; int fd; int error; TYPE_1__* ev; int flags; int status; } ;
struct TYPE_4__ {int in_queue; } ;


 int C_FAILED ;
 int assert (TYPE_2__*) ;
 int conn_error ;
 int delete_query (struct conn_query*) ;
 int expired_forwarded_queries ;
 int fprintf (int ,char*,struct conn_query*,TYPE_2__*,int,int) ;
 int put_event_into_heap (TYPE_1__*) ;
 int stderr ;
 scalar_t__ verbosity ;

int query_timeout (struct conn_query *q) {
  q->outbound->unreliability += 1000;
  if (verbosity > 0) {
    fprintf (stderr, "query %p of connection %p (fd=%d) timed out, unreliability=%d\n", q, q->outbound, q->outbound->fd, q->outbound->unreliability);
  }
  assert (q->outbound);
  q->outbound->status = conn_error;
  q->outbound->error = -239;
  q->outbound->flags |= C_FAILED;
  if (!q->outbound->ev->in_queue) {
    put_event_into_heap (q->outbound->ev);
  }
  delete_query (q);
  expired_forwarded_queries++;
  return 0;
}
