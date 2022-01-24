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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int idx; } ;
struct perf_event {TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct perf_event *event,
					     u64 value)
{
	int idx = event->hw.idx;

	if (FUNC0(event)) {
		FUNC1(idx, FUNC3(value));
		FUNC1(idx - 1, FUNC2(value));
	} else {
		FUNC1(idx, value);
	}
}