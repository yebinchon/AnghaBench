#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct udp_message {void* next; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udp_message*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2 (struct udp_message *msg) {
  int res = FUNC1 (&msg->raw);
  msg->next = (void *) -1;
  FUNC0 (msg);
  return res;
}