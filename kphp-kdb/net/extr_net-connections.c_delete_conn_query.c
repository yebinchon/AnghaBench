
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ h_idx; } ;
struct conn_query {scalar_t__ req_generation; TYPE_5__ timer; TYPE_4__* outbound; TYPE_3__* requester; TYPE_2__* next; TYPE_1__* prev; } ;
struct TYPE_12__ {int in_queue; } ;
struct TYPE_10__ {int fd; } ;
struct TYPE_9__ {scalar_t__ generation; TYPE_6__* ev; int fd; int pending_queries; } ;
struct TYPE_8__ {TYPE_1__* prev; } ;
struct TYPE_7__ {TYPE_2__* next; } ;


 int put_event_into_heap (TYPE_6__*) ;
 int remove_event_timer (TYPE_5__*) ;
 int vkprintf (int,char*,...) ;

int delete_conn_query (struct conn_query *q) {
  vkprintf (2, "delete_conn_query (%p)\n", q);
  q->next->prev = q->prev;
  q->prev->next = q->next;
  if (q->requester && q->requester->generation == q->req_generation) {
    if (!--q->requester->pending_queries) {

      vkprintf (2, "socket %d was the last one, waking master %d\n", q->outbound ? q->outbound->fd : -1, q->requester->fd);
      if (!q->requester->ev->in_queue) {
 put_event_into_heap (q->requester->ev);
      }
    }
  }
  q->requester = 0;
  q->outbound = 0;
  if (q->timer.h_idx) {
    remove_event_timer (&q->timer);
  }
  return 0;
}
