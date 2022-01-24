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
struct perf_event {int dummy; } ;
struct TYPE_2__ {void (* read ) (struct perf_event*) ;} ;

/* Variables and functions */
 void FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 TYPE_1__ x86_pmu ; 

__attribute__((used)) static inline void FUNC2(struct perf_event *event)
{
	if (x86_pmu.read)
		return x86_pmu.read(event);
	FUNC1(event);
}