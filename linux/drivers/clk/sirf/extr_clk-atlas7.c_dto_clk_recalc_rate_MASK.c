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
typedef  int u64 ;
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct clk_dto {scalar_t__ src_offset; scalar_t__ inc_offset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DTO_RESL_DOUBLE ; 
 int /*<<< orphan*/  DTO_RESL_NORMAL ; 
 scalar_t__ SIRFSOC_CLKC_AUDIO_DTO_DROFF ; 
 scalar_t__ SIRFSOC_CLKC_AUDIO_DTO_SRC ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct clk_dto* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
	unsigned long parent_rate)
{
	u64 rate = parent_rate;
	struct clk_dto *clk = FUNC3(hw);
	u32 finc = FUNC1(clk->inc_offset);
	u32 droff = FUNC1(clk->src_offset + SIRFSOC_CLKC_AUDIO_DTO_DROFF - SIRFSOC_CLKC_AUDIO_DTO_SRC);

	rate *= finc;
	if (droff & FUNC0(0))
		/* Double resolution off */
		FUNC2(rate, DTO_RESL_NORMAL);
	else
		FUNC2(rate, DTO_RESL_DOUBLE);

	return rate;
}