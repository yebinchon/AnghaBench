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
struct TYPE_2__ {int /*<<< orphan*/  config; } ;
struct perf_event {TYPE_1__ hw; } ;
struct intel_uncore_box {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct intel_uncore_box*,struct perf_event*) ; 
 unsigned int FUNC3 (struct intel_uncore_box*,struct perf_event*) ; 

__attribute__((used)) static inline bool FUNC4(struct intel_uncore_box *box,
						 struct perf_event *event)
{
	unsigned int type = FUNC1(event->hw.config);
	unsigned int idx = FUNC0(event->hw.config);

	return (type < FUNC3(box, event)) &&
	       (idx < FUNC2(box, event));
}