
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int fd; scalar_t__ query_start_time; } ;
struct TYPE_3__ {scalar_t__ wakeup_time; } ;
struct conn_query {scalar_t__ start_time; TYPE_1__ timer; int * cq_type; scalar_t__ extra; struct connection* requester; struct connection* outbound; } ;
struct TYPE_4__ {int query_state; } ;


 TYPE_2__* SQLS_DATA (struct connection*) ;
 int active_queries ;
 int fprintf (int ,char*,...) ;
 int insert_conn_query (struct conn_query*) ;
 int proxy_query_type ;
 int query_running ;
 int stderr ;
 int tot_forwarded_queries ;
 int verbosity ;
 struct conn_query* zmalloc (int) ;

int create_query (struct connection *d, struct connection *c, double timeout) {
  struct conn_query *Q = zmalloc (sizeof (struct conn_query));

  if (verbosity > 1) {
    fprintf (stderr, "create_query(%p[%d], %p[%d]): Q=%p\n", d, d->fd, c, c->fd, Q);
  }


  Q->outbound = d;
  Q->requester = c;
  Q->start_time = c->query_start_time;
  Q->extra = 0;
  Q->cq_type = &proxy_query_type;
  Q->timer.wakeup_time = (timeout > 0 ? Q->start_time + timeout : 0);

  SQLS_DATA(c)->query_state = query_running;

  insert_conn_query (Q);
  active_queries++;
  tot_forwarded_queries++;

  if (verbosity > 1) {
    fprintf (stderr, "after insert_conn_query()\n");
  }

  return 1;
}
