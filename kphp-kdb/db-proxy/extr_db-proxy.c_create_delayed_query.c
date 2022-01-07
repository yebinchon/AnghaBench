
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int fd; scalar_t__ query_start_time; } ;
struct conn_target {int dummy; } ;
struct TYPE_3__ {scalar_t__ wakeup_time; } ;
struct conn_query {scalar_t__ start_time; TYPE_1__ timer; int * cq_type; scalar_t__ extra; struct connection* requester; } ;
struct TYPE_4__ {int query_state; } ;


 TYPE_2__* SQLS_DATA (struct connection*) ;
 int fprintf (int ,char*,...) ;
 int insert_conn_query_into_list (struct conn_query*,struct conn_query*) ;
 int proxy_delayed_query_type ;
 int query_wait_target ;
 int stderr ;
 int tot_delayed_queries ;
 int verbosity ;
 int waiting_queries ;
 struct conn_query* zmalloc (int) ;

int create_delayed_query (struct conn_target *t, struct connection *c, double timeout) {
  struct conn_query *Q = zmalloc (sizeof (struct conn_query));

  if (verbosity > 1) {
    fprintf (stderr, "create_delayed_query(%p, %p[%d]): Q=%p\n", t, c, c->fd, Q);
  }


  Q->requester = c;
  Q->start_time = c->query_start_time;
  Q->extra = 0;
  Q->cq_type = &proxy_delayed_query_type;
  Q->timer.wakeup_time = (timeout > 0 ? Q->start_time + timeout : 0);

  SQLS_DATA(c)->query_state = query_wait_target;

  insert_conn_query_into_list (Q, (struct conn_query *)t);
  waiting_queries++;
  tot_delayed_queries++;

  if (verbosity > 1) {
    fprintf (stderr, "after insert_conn_query_into_list()\n");
  }

  return 1;
}
