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
struct kcs_bmc {int data_in_avail; scalar_t__ data_in_idx; int /*<<< orphan*/  phase; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_STATE ; 
 int /*<<< orphan*/  KCS_PHASE_ERROR ; 
 int /*<<< orphan*/  KCS_ZERO_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct kcs_bmc*) ; 
 int /*<<< orphan*/  FUNC1 (struct kcs_bmc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kcs_bmc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kcs_bmc *kcs_bmc)
{
	FUNC1(kcs_bmc, ERROR_STATE);
	FUNC0(kcs_bmc);
	FUNC2(kcs_bmc, KCS_ZERO_DATA);

	kcs_bmc->phase = KCS_PHASE_ERROR;
	kcs_bmc->data_in_avail = false;
	kcs_bmc->data_in_idx = 0;
}