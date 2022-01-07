
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct conn_target {int port; TYPE_1__ target; } ;
struct conn_query {TYPE_2__* outbound; } ;
struct TYPE_4__ {int unreliability; int fd; struct conn_target* target; } ;


 int expired_forwarded_queries ;
 int fprintf (int ,char*,struct conn_query*,TYPE_2__*,int,int) ;
 int ntohl (int ) ;
 int stderr ;
 int store_expired_target (int ,int ) ;
 scalar_t__ verbosity ;

int query_timeout (struct conn_query *q) {
  q->outbound->unreliability += 1000;
  if (verbosity > 0) {
    fprintf (stderr, "query %p of connection %p (fd=%d) timed out, unreliability=%d\n", q, q->outbound, q->outbound->fd, q->outbound->unreliability);
  }
  expired_forwarded_queries++;

  struct conn_target *S = q->outbound->target;
  store_expired_target (ntohl (S->target.s_addr), S->port);

  return 0;
}
