
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tl_saved_query {int dummy; } ;
struct connection {int fd; int generation; } ;
struct conn_query_functions {int dummy; } ;
struct TYPE_2__ {scalar_t__ wakeup_time; } ;
struct conn_query {scalar_t__ start_time; TYPE_1__ timer; struct conn_query_functions* cq_type; struct tl_saved_query* extra; struct connection* requester; struct connection* outbound; scalar_t__ custom_type; } ;
struct aio_connection {int fd; struct conn_query* first_query; } ;


 int CLOCK_MONOTONIC ;
 int active_aio_queries ;
 int fprintf (int ,char*,...) ;
 scalar_t__ get_utime (int ) ;
 int insert_conn_query (struct conn_query*) ;
 int stderr ;
 int tot_aio_queries ;
 int verbosity ;
 struct conn_query* zmalloc (int) ;

int tl_create_aio_query (struct aio_connection *a, struct connection *c, double timeout, struct conn_query_functions *cq, struct tl_saved_query *extra) {
  struct conn_query *Q = zmalloc (sizeof (struct conn_query));

  if (verbosity > 1) {
    fprintf (stderr, "create_query(%p[%d], %p[%d]): Q=%p\n", a, a->fd, c, c->fd, Q);
  }

  Q->custom_type = 0;
  Q->outbound = (struct connection *)a;
  Q->requester = c;
  Q->start_time = get_utime (CLOCK_MONOTONIC);
  Q->extra = extra;
  Q->cq_type = cq;
  Q->timer.wakeup_time = (timeout > 0 ? Q->start_time + timeout : 0);

  if (verbosity > 1 && a->first_query != (struct conn_query *) a) {
    fprintf (stderr, "!NOTICE! inserting second query to %p\n", a);
  }

  insert_conn_query (Q);
  c->generation ++;
  active_aio_queries++;
  tot_aio_queries++;

  if (verbosity > 1) {
    fprintf (stderr, "after insert_conn_query()\n");
  }

  return 1;
}
