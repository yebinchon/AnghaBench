
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gather_data {int dummy; } ;
struct connection {scalar_t__ query_start_time; } ;
struct TYPE_3__ {scalar_t__ wakeup_time; } ;
struct conn_query {TYPE_1__ timer; scalar_t__ start_time; int * cq_type; struct gather_data* extra; struct connection* requester; struct connection* outbound; int custom_type; } ;
struct TYPE_4__ {int query_type; } ;


 TYPE_2__* MCS_DATA (struct connection*) ;
 int fprintf (int ,char*,scalar_t__,scalar_t__,int ) ;
 int get_utime_monotonic () ;
 int insert_conn_query (struct conn_query*) ;
 int search_query_type ;
 int stderr ;
 int verbosity ;
 struct conn_query* zmalloc (int) ;

struct conn_query *create_inbound_query (struct gather_data *G, struct connection *c, double timeout) {
  struct conn_query *Q = zmalloc (sizeof (struct conn_query));

  Q->custom_type = MCS_DATA(c)->query_type;
  Q->outbound = c;
  Q->requester = c;
  Q->start_time = c->query_start_time;
  Q->extra = G;
  Q->cq_type = &search_query_type;
  Q->timer.wakeup_time = (timeout > 0 ? Q->start_time + timeout : 0);

  insert_conn_query (Q);

  if (verbosity > 1) {
    fprintf (stderr, "after insert_conn_query(). Q->start_time = %lf, Q->timer.wakeup_time=%lf. cur_time=%lf\n", Q->start_time, Q->timer.wakeup_time, get_utime_monotonic ());
  }

  return Q;
}
