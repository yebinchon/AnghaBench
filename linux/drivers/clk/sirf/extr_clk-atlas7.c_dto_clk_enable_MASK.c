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
struct clk_hw {int dummy; } ;
struct clk_dto {int src_offset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SIRFSOC_CLKC_AUDIO_DTO_ENA ; 
 int SIRFSOC_CLKC_AUDIO_DTO_SRC ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 struct clk_dto* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	u32 val, reg;
	struct clk_dto *clk = FUNC3(hw);

	reg = clk->src_offset + SIRFSOC_CLKC_AUDIO_DTO_ENA - SIRFSOC_CLKC_AUDIO_DTO_SRC;

	val = FUNC1(reg) | FUNC0(0);
	FUNC2(val, reg);
	return 0;
}