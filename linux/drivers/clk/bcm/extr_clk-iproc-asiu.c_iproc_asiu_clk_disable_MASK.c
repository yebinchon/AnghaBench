#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ offset; int en_shift; } ;
struct iproc_asiu_clk {TYPE_1__ gate; struct iproc_asiu* asiu; } ;
struct iproc_asiu {scalar_t__ gate_base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ IPROC_CLK_INVALID_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 struct iproc_asiu_clk* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct iproc_asiu_clk *clk = FUNC1(hw);
	struct iproc_asiu *asiu = clk->asiu;
	u32 val;

	/* some clocks at the ASIU level are always enabled */
	if (clk->gate.offset == IPROC_CLK_INVALID_OFFSET)
		return;

	val = FUNC0(asiu->gate_base + clk->gate.offset);
	val &= ~(1 << clk->gate.en_shift);
	FUNC2(val, asiu->gate_base + clk->gate.offset);
}