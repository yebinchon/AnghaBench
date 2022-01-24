#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  priority_lists_requests_after_list_ending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int next_priority_lists_request_time ; 
 TYPE_1__ simulation_stats ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

__attribute__((used)) static void FUNC3 (int t) {
  FUNC2 (2, "<%d> resend_priority_lists_request\n", t);
  next_priority_lists_request_time = t;
  simulation_stats.priority_lists_requests_after_list_ending++;
  FUNC1 ();
  FUNC0 ();
}