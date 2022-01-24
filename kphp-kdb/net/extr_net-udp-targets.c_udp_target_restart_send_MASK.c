#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct udp_target {int flags; scalar_t__ window_size; int /*<<< orphan*/  socket; scalar_t__ window_queue; } ;
struct TYPE_3__ {scalar_t__ total_bytes; } ;
struct udp_message {TYPE_1__ raw; } ;
struct tmp_msg {scalar_t__ value_bytes; struct udp_message* msg; } ;
struct TYPE_4__ {struct tmp_msg x; } ;

/* Variables and functions */
 scalar_t__ STOP_WINDOW_SIZE ; 
 int UDP_WAIT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct udp_message*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_2__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  udp_data_body_sent ; 
 int /*<<< orphan*/  udp_data_sent ; 
 scalar_t__ udp_drop_probability ; 
 int /*<<< orphan*/  udp_packets_sent ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct udp_message*) ; 

void FUNC6 (struct udp_target *S) {
  //vkprintf (0, "WINDOW STOP\n");
  S->flags &= ~UDP_WAIT;
  while (S->window_queue && !(S->flags & UDP_WAIT)) {
    struct tmp_msg x = FUNC3 (S->window_queue)->x;
    S->window_queue = FUNC2 (S->window_queue);
    struct udp_message *a = x.msg;
    if (udp_drop_probability && FUNC0 () < udp_drop_probability) {
      //vkprintf (0, "Dropped\n");
      FUNC4 (&a->raw);
      FUNC1 (a);    
    } else {
      FUNC5 (S->socket, a);
    }
    udp_packets_sent ++;
    udp_data_sent += a->raw.total_bytes;
    udp_data_body_sent += x.value_bytes;
    S->window_size += x.value_bytes;;
    if (S->window_size >= STOP_WINDOW_SIZE) {
      S->flags |= UDP_WAIT;
      //vkprintf (0, "WINDOW START\n");
    }    
  }
}