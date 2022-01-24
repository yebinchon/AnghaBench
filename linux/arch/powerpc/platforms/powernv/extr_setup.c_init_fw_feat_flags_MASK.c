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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEC_FTR_BCCTRL_SERIALISED ; 
 int /*<<< orphan*/  SEC_FTR_BCCTR_FLUSH_ASSIST ; 
 int /*<<< orphan*/  SEC_FTR_BNDS_CHK_SPEC_BAR ; 
 int /*<<< orphan*/  SEC_FTR_COUNT_CACHE_DISABLED ; 
 int /*<<< orphan*/  SEC_FTR_FAVOUR_SECURITY ; 
 int /*<<< orphan*/  SEC_FTR_FLUSH_COUNT_CACHE ; 
 int /*<<< orphan*/  SEC_FTR_L1D_FLUSH_HV ; 
 int /*<<< orphan*/  SEC_FTR_L1D_FLUSH_ORI30 ; 
 int /*<<< orphan*/  SEC_FTR_L1D_FLUSH_PR ; 
 int /*<<< orphan*/  SEC_FTR_L1D_FLUSH_TRIG2 ; 
 int /*<<< orphan*/  SEC_FTR_L1D_THREAD_PRIV ; 
 int /*<<< orphan*/  SEC_FTR_SPEC_BAR_ORI31 ; 
 scalar_t__ FUNC0 (char*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device_node *np)
{
	if (FUNC0("enabled", "inst-spec-barrier-ori31,31,0", np))
		FUNC2(SEC_FTR_SPEC_BAR_ORI31);

	if (FUNC0("enabled", "fw-bcctrl-serialized", np))
		FUNC2(SEC_FTR_BCCTRL_SERIALISED);

	if (FUNC0("enabled", "inst-l1d-flush-ori30,30,0", np))
		FUNC2(SEC_FTR_L1D_FLUSH_ORI30);

	if (FUNC0("enabled", "inst-l1d-flush-trig2", np))
		FUNC2(SEC_FTR_L1D_FLUSH_TRIG2);

	if (FUNC0("enabled", "fw-l1d-thread-split", np))
		FUNC2(SEC_FTR_L1D_THREAD_PRIV);

	if (FUNC0("enabled", "fw-count-cache-disabled", np))
		FUNC2(SEC_FTR_COUNT_CACHE_DISABLED);

	if (FUNC0("enabled", "fw-count-cache-flush-bcctr2,0,0", np))
		FUNC2(SEC_FTR_BCCTR_FLUSH_ASSIST);

	if (FUNC0("enabled", "needs-count-cache-flush-on-context-switch", np))
		FUNC2(SEC_FTR_FLUSH_COUNT_CACHE);

	/*
	 * The features below are enabled by default, so we instead look to see
	 * if firmware has *disabled* them, and clear them if so.
	 */
	if (FUNC0("disabled", "speculation-policy-favor-security", np))
		FUNC1(SEC_FTR_FAVOUR_SECURITY);

	if (FUNC0("disabled", "needs-l1d-flush-msr-pr-0-to-1", np))
		FUNC1(SEC_FTR_L1D_FLUSH_PR);

	if (FUNC0("disabled", "needs-l1d-flush-msr-hv-1-to-0", np))
		FUNC1(SEC_FTR_L1D_FLUSH_HV);

	if (FUNC0("disabled", "needs-spec-barrier-for-bound-checks", np))
		FUNC1(SEC_FTR_BNDS_CHK_SPEC_BAR);
}