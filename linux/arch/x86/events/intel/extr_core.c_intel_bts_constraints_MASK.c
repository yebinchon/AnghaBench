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
struct perf_event {int dummy; } ;
struct event_constraint {int dummy; } ;

/* Variables and functions */
 struct event_constraint bts_constraint ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct event_constraint *
FUNC2(struct perf_event *event)
{
	if (FUNC1(FUNC0(event)))
		return &bts_constraint;

	return NULL;
}