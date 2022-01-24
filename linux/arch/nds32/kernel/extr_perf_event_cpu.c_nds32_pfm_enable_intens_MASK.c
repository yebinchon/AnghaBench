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
typedef  unsigned int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  NDS32_SR_PFM_CTL ; 
 unsigned int* PFM_CTL_IE ; 
 unsigned int* PFM_CTL_OVF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(int idx)
{
	unsigned int val = FUNC0(NDS32_SR_PFM_CTL);
	u32 mask = 0;

	mask = PFM_CTL_IE[idx];
	val |= mask;
	val &= ~(PFM_CTL_OVF[0] | PFM_CTL_OVF[1] | PFM_CTL_OVF[2]);
	FUNC1(val, NDS32_SR_PFM_CTL);
	return idx;
}