
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ h_idx; } ;
struct conn_query {scalar_t__ req_generation; TYPE_3__ timer; TYPE_2__* requester; TYPE_1__* outbound; } ;
struct TYPE_8__ {int in_queue; } ;
struct TYPE_6__ {scalar_t__ generation; TYPE_4__* ev; int fd; int pending_queries; } ;
struct TYPE_5__ {int fd; } ;


 int put_event_into_heap (TYPE_4__*) ;
 int remove_event_timer (TYPE_3__*) ;
 int vkprintf (int,char*,...) ;

int delete_conn_query_from_requester (struct conn_query *q) {
  vkprintf (2, "delete_conn_query_from_requester (%p)\n", q);
  if (q->requester && q->requester->generation == q->req_generation) {
    if (!--q->requester->pending_queries) {

      vkprintf (2, "socket %d was the last one, waking master %d\n", q->outbound ? q->outbound->fd : -1, q->requester->fd);
      if (!q->requester->ev->in_queue) {
        put_event_into_heap (q->requester->ev);
      }
    }
  }
  q->requester = 0;
  if (q->timer.h_idx) {
    remove_event_timer (&q->timer);
  }
  return 0;
}
