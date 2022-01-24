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
struct TYPE_2__ {int flags; } ;
struct perf_event {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_MEM_NA ; 
 int PERF_X86_EVENT_PEBS_HSW_PREC ; 
 int PERF_X86_EVENT_PEBS_LDLAT ; 
 int PERF_X86_EVENT_PEBS_ST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC3(struct perf_event *event, u64 aux)
{
	u64 val = PERF_MEM_NA;
	int fl = event->hw.flags;
	bool fst = fl & (PERF_X86_EVENT_PEBS_ST | PERF_X86_EVENT_PEBS_HSW_PREC);

	if (fl & PERF_X86_EVENT_PEBS_LDLAT)
		val = FUNC0(aux);
	else if (fst && (fl & PERF_X86_EVENT_PEBS_HSW_PREC))
		val = FUNC1(event, aux);
	else if (fst)
		val = FUNC2(aux);
	return val;
}