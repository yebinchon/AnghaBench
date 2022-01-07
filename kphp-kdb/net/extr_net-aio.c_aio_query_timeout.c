
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct conn_query {TYPE_1__* outbound; } ;
struct TYPE_2__ {int fd; int unreliability; } ;


 int delete_aio_query (struct conn_query*) ;
 int expired_aio_queries ;
 int fprintf (int ,char*,struct conn_query*,TYPE_1__*,int,int) ;
 int stderr ;
 scalar_t__ verbosity ;

int aio_query_timeout (struct conn_query *q) {
  if (verbosity > 0) {
    fprintf (stderr, "query %p of connection %p (fd=%d) timed out, unreliability=%d\n", q, q->outbound, q->outbound->fd, q->outbound->unreliability);
  }
  expired_aio_queries++;
  delete_aio_query (q);
  return 0;
}
