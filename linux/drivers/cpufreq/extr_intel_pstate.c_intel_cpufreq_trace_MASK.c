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
struct sample {int /*<<< orphan*/  tsc; int /*<<< orphan*/  aperf; int /*<<< orphan*/  mperf; } ;
struct TYPE_2__ {int /*<<< orphan*/  current_pstate; } ;
struct cpudata {int iowait_boost; TYPE_1__ pstate; struct sample sample; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpudata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct cpudata *cpu, unsigned int trace_type, int old_pstate)
{
	struct sample *sample;

	if (!FUNC5())
		return;

	if (!FUNC2(cpu, FUNC3()))
		return;

	sample = &cpu->sample;
	FUNC4(trace_type,
		0,
		old_pstate,
		cpu->pstate.current_pstate,
		sample->mperf,
		sample->aperf,
		sample->tsc,
		FUNC1(cpu),
		FUNC0(cpu->iowait_boost * 100));
}