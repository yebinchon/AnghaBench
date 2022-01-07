
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udp_socket {int flags; TYPE_2__* ev; int send_queue_len; int send_queue_bytes; struct udp_message* send_queue_last; struct udp_message* send_queue; } ;
struct TYPE_3__ {scalar_t__ magic; scalar_t__ total_bytes; } ;
struct udp_message {struct udp_message* next; TYPE_1__ raw; } ;
struct TYPE_4__ {int in_queue; } ;


 scalar_t__ MAX_UDP_SEND_DATAGRAM ;
 scalar_t__ RM_INIT_MAGIC ;
 int U_WORKING ;
 int assert (int) ;
 int put_event_into_heap (TYPE_2__*) ;

int udp_queue_message (struct udp_socket *u, struct udp_message *msg) {
  int need_wakeup = 0;
  assert (msg->raw.magic == RM_INIT_MAGIC);
  if (msg->raw.magic != RM_INIT_MAGIC || msg->raw.total_bytes > MAX_UDP_SEND_DATAGRAM) {
    return 0;
  }
  if (!u->send_queue) {
    u->send_queue = u->send_queue_last = msg;
    need_wakeup = 1;
  } else {
    u->send_queue_last->next = msg;
    u->send_queue_last = msg;
  }
  u->send_queue_bytes += msg->raw.total_bytes;
  u->send_queue_len++;
  msg->next = 0;
  if (!(u->flags & U_WORKING)) {

    if (need_wakeup && !u->ev->in_queue) {
      put_event_into_heap (u->ev);
    }
  }
  return 1;
}
