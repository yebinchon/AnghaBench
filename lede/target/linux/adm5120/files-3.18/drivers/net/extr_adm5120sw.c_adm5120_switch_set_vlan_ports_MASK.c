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
 unsigned int SWITCH_REG_VLAN_G1 ; 
 unsigned int SWITCH_REG_VLAN_G2 ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 

__attribute__((used)) static void FUNC2(unsigned int vlan, u32 ports)
{
	unsigned int reg;
	u32 t;

	if (vlan < 4)
		reg = SWITCH_REG_VLAN_G1;
	else {
		vlan -= 4;
		reg = SWITCH_REG_VLAN_G2;
	}

	t = FUNC0(reg);
	t &= ~(0xFF << (vlan*8));
	t |= (ports << (vlan*8));
	FUNC1(reg, t);
}