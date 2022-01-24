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
struct connection {int target; void* last_response_time; void* last_query_sent_time; } ;

/* Variables and functions */
 int Targets ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int lease_ready_flag ; 
 void* precise_now ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3 (struct connection *c) {
  c->last_query_sent_time = precise_now;
  c->last_response_time = precise_now;

  int target_fd = c->target - Targets;
  if (target_fd == FUNC0() && !FUNC1()) {
    lease_ready_flag = 1;
    FUNC2();
  }
  return 0;
}