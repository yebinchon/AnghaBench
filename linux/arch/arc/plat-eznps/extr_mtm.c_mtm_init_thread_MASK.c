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
struct nps_host_reg_thr_init_sts {scalar_t__ thr_id; scalar_t__ err; scalar_t__ bsy; int /*<<< orphan*/  value; } ;
struct nps_host_reg_thr_init {scalar_t__ thr_id; int str; scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(int cpu)
{
	int i, tries = 5;
	struct nps_host_reg_thr_init thr_init;
	struct nps_host_reg_thr_init_sts thr_init_sts;

	/* Set thread init register */
	thr_init.value = 0;
	FUNC4(thr_init.value, FUNC0(cpu));
	thr_init.thr_id = FUNC2(cpu);
	thr_init.str = 1;
	FUNC4(thr_init.value, FUNC0(cpu));

	/* Poll till thread init is done */
	for (i = 0; i < tries; i++) {
		thr_init_sts.value = FUNC3(FUNC1(cpu));
		if (thr_init_sts.thr_id == thr_init.thr_id) {
			if (thr_init_sts.bsy)
				continue;
			else if (thr_init_sts.err)
				FUNC5("Failed to thread init cpu %u\n", cpu);
			break;
		}

		FUNC5("Wrong thread id in thread init for cpu %u\n", cpu);
		break;
	}

	if (i == tries)
		FUNC5("Got thread init timeout for cpu %u\n", cpu);
}