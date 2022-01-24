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
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CLKEN ; 
 int EN_APLL_LOCKED ; 
 int /*<<< orphan*/  PLL_MOD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(u8 enable_bit)
{
	u32 v;

	v = FUNC0(PLL_MOD, CM_CLKEN);
	v &= ~(EN_APLL_LOCKED << enable_bit);
	FUNC1(v, PLL_MOD, CM_CLKEN);
}