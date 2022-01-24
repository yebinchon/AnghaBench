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
struct clk_hw {int dummy; } ;
struct __prci_data {int dummy; } ;
struct __prci_clock {struct __prci_data* pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRCI_CLKMUXSTATUSREG_OFFSET ; 
 int PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_MASK ; 
 int FUNC0 (struct __prci_data*,int /*<<< orphan*/ ) ; 
 struct __prci_clock* FUNC1 (struct clk_hw*) ; 
 unsigned long FUNC2 (unsigned long,int) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
							    unsigned long parent_rate)
{
	struct __prci_clock *pc = FUNC1(hw);
	struct __prci_data *pd = pc->pd;
	u32 v;
	u8 div;

	v = FUNC0(pd, PRCI_CLKMUXSTATUSREG_OFFSET);
	v &= PRCI_CLKMUXSTATUSREG_TLCLKSEL_STATUS_MASK;
	div = v ? 1 : 2;

	return FUNC2(parent_rate, div);
}