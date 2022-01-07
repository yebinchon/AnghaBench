
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int fd; } ;
struct TYPE_2__ {scalar_t__ wakeup_time; } ;
struct conn_query {TYPE_1__ timer; int * cq_type; scalar_t__ extra; int start_time; struct connection* requester; struct connection* outbound; } ;


 int fprintf (int ,char*,...) ;
 int precise_now ;
 int proxy_watermark_query_type ;
 int push_conn_query (struct conn_query*) ;
 int stderr ;
 int tot_watermark_rev_queries ;
 int verbosity ;
 int watermark_rev_queries ;
 struct conn_query* zmalloc (int) ;

int create_reverse_watermark_query (struct connection *c, struct connection *d) {
  struct conn_query *Q = zmalloc (sizeof (struct conn_query));

  if (verbosity > 1) {
    fprintf (stderr, "create_rev_watermark_query(%p[%d], %p[%d]): Q=%p\n", d, d->fd, c, c->fd, Q);
  }


  Q->outbound = c;
  Q->requester = d;
  Q->start_time = precise_now;
  Q->extra = 0;
  Q->cq_type = &proxy_watermark_query_type;
  Q->timer.wakeup_time = 0;



  push_conn_query (Q);
  watermark_rev_queries++;
  tot_watermark_rev_queries++;

  if (verbosity > 1) {
    fprintf (stderr, "after push_conn_query()\n");
  }

  return 1;
}
