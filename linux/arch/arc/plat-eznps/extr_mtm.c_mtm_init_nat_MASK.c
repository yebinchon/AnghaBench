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
struct nps_host_reg_mtm_cfg {int nat; int /*<<< orphan*/  value; } ;
struct nps_host_reg_aux_udmc {int nat; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTOP_AUX_UDMC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NPS_NUM_HW_THREADS ; 
 int /*<<< orphan*/  cpu_possible_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(int cpu)
{
	struct nps_host_reg_mtm_cfg mtm_cfg;
	struct nps_host_reg_aux_udmc udmc;
	int log_nat, nat = 0, i, t;

	/* Iterate core threads and update nat */
	for (i = 0, t = cpu; i < NPS_NUM_HW_THREADS; i++, t++)
		nat += FUNC6(t, FUNC1(cpu_possible_mask));

	log_nat = FUNC2(nat);

	udmc.value = FUNC5(CTOP_AUX_UDMC);
	udmc.nat = log_nat;
	FUNC7(CTOP_AUX_UDMC, udmc.value);

	mtm_cfg.value = FUNC3(FUNC0(cpu));
	mtm_cfg.nat = log_nat;
	FUNC4(mtm_cfg.value, FUNC0(cpu));
}