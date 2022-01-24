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
typedef  int u64 ;
struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline u64 FUNC2(struct perf_event *event)
{
	int idx = event->hw.idx;
	u64 val = 0;

	val = FUNC1(idx);
	if (FUNC0(event))
		val = (val << 32) | FUNC1(idx - 1);
	return val;
}