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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  NDS32_SR_PFM_CTL ; 
 int* PFM_CTL_KS ; 
 int* PFM_CTL_KU ; 
 int* PFM_CTL_OFFSEL ; 
 int* PFM_CTL_OVF ; 
 int* PFM_CTL_SEL ; 
 int SOFTWARE_EVENT_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(int idx, u32 evnum)
{
	u32 offset = 0;
	u32 ori_val = FUNC0(NDS32_SR_PFM_CTL);
	u32 ev_mask = 0;
	u32 no_kernel_mask = 0;
	u32 no_user_mask = 0;
	u32 val;

	offset = PFM_CTL_OFFSEL[idx];
	/* Clear previous mode selection, and write new one */
	no_kernel_mask = PFM_CTL_KS[idx];
	no_user_mask = PFM_CTL_KU[idx];
	ori_val &= ~no_kernel_mask;
	ori_val &= ~no_user_mask;
	if (evnum & no_kernel_mask)
		ori_val |= no_kernel_mask;

	if (evnum & no_user_mask)
		ori_val |= no_user_mask;

	/* Clear previous event selection */
	ev_mask = PFM_CTL_SEL[idx];
	ori_val &= ~ev_mask;
	evnum &= SOFTWARE_EVENT_MASK;

	/* undo the linear mapping */
	evnum = FUNC2(evnum);
	val = ori_val | (evnum << offset);
	val &= ~(PFM_CTL_OVF[0] | PFM_CTL_OVF[1] | PFM_CTL_OVF[2]);
	FUNC1(val, NDS32_SR_PFM_CTL);
}