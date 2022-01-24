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
 scalar_t__ DCRN_L2C0_ADDR ; 
 scalar_t__ DCRN_L2C0_CMD ; 
 scalar_t__ DCRN_L2C0_DATA ; 
 scalar_t__ DCRN_L2C0_SR ; 
 int L2C_CMD_DIAG ; 
 int L2C_SR_CC ; 
 scalar_t__ dcrbase_l2c ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static inline u32 FUNC2(u32 addr)
{
	FUNC1(dcrbase_l2c + DCRN_L2C0_ADDR, addr);
	FUNC1(dcrbase_l2c + DCRN_L2C0_CMD, L2C_CMD_DIAG);
	while (!(FUNC0(dcrbase_l2c + DCRN_L2C0_SR) & L2C_SR_CC))
		;

	return FUNC0(dcrbase_l2c + DCRN_L2C0_DATA);
}