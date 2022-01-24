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
struct rbcfg_value {scalar_t__ id; int num_values; struct rbcfg_value const* values; } ;

/* Variables and functions */
 int FUNC0 (struct rbcfg_value*) ; 
#define  RBCFG_SOC_AR9344 129 
#define  RBCFG_SOC_QCA953X 128 
 int RBCFG_SOC_UNKNOWN ; 
 scalar_t__ RB_ID_CPU_FREQ ; 
 scalar_t__ RB_ID_TERMINATOR ; 
 int FUNC1 () ; 
 struct rbcfg_value* rbcfg_cpu_freq_ar9344 ; 
 struct rbcfg_value* rbcfg_cpu_freq_qca953x ; 
 struct rbcfg_value* rbcfg_envs ; 

__attribute__((used)) static void FUNC2(void)
{
	int i, num_val, soc_type;
	const struct rbcfg_value * env_value;

	/* detect SoC */
	soc_type = FUNC1();

	/* update rbcfg_envs */
	switch (soc_type) {
		case RBCFG_SOC_QCA953X:
			env_value = rbcfg_cpu_freq_qca953x;
			num_val = FUNC0(rbcfg_cpu_freq_qca953x);
			break;
		case RBCFG_SOC_AR9344:
			env_value = rbcfg_cpu_freq_ar9344;
			num_val = FUNC0(rbcfg_cpu_freq_ar9344);
			break;
	}

	for (i = 0; i < FUNC0(rbcfg_envs); i++) {
		if (RB_ID_CPU_FREQ == rbcfg_envs[i].id) {
			if (RBCFG_SOC_UNKNOWN == soc_type)
				rbcfg_envs[i].id = RB_ID_TERMINATOR;
			else {
				rbcfg_envs[i].values = env_value;
				rbcfg_envs[i].num_values = num_val;
			}
			break;
		}
	}
}