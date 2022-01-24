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
struct powernv_smp_call_data {int /*<<< orphan*/  freq; int /*<<< orphan*/  pstate_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRN_PMSR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	unsigned long pmspr_val;
	struct powernv_smp_call_data *freq_data = arg;

	pmspr_val = FUNC1(SPRN_PMSR);
	freq_data->pstate_id = FUNC0(pmspr_val);
	freq_data->freq = FUNC3(freq_data->pstate_id);

	FUNC2("cpu %d pmsr %016lX pstate_id 0x%x frequency %d kHz\n",
		 FUNC4(), pmspr_val, freq_data->pstate_id,
		 freq_data->freq);
}