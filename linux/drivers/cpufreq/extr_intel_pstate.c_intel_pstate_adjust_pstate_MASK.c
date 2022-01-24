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
struct sample {int busy_scaled; int /*<<< orphan*/  tsc; int /*<<< orphan*/  aperf; int /*<<< orphan*/  mperf; int /*<<< orphan*/  core_avg_perf; } ;
struct TYPE_2__ {int current_pstate; int scaling; } ;
struct cpudata {int iowait_boost; TYPE_1__ pstate; struct sample sample; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpudata*) ; 
 int FUNC2 (struct cpudata*) ; 
 int FUNC3 (struct cpudata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cpudata*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct cpudata *cpu)
{
	int from = cpu->pstate.current_pstate;
	struct sample *sample;
	int target_pstate;

	FUNC8();

	target_pstate = FUNC2(cpu);
	target_pstate = FUNC3(cpu, target_pstate);
	FUNC6(target_pstate * cpu->pstate.scaling, cpu->cpu);
	FUNC4(cpu, target_pstate);

	sample = &cpu->sample;
	FUNC7(FUNC5(100, sample->core_avg_perf),
		FUNC0(sample->busy_scaled),
		from,
		cpu->pstate.current_pstate,
		sample->mperf,
		sample->aperf,
		sample->tsc,
		FUNC1(cpu),
		FUNC0(cpu->iowait_boost * 100));
}