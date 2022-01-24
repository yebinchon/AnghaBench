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
struct clk_hw {int dummy; } ;
struct clk_audio_pmc {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PMC_AUDIO_PLL0 ; 
 int /*<<< orphan*/  AT91_PMC_AUDIO_PLL_PMCEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_audio_pmc* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC2(struct clk_hw *hw)
{
	struct clk_audio_pmc *apmc_ck = FUNC1(hw);

	FUNC0(apmc_ck->regmap, AT91_PMC_AUDIO_PLL0,
			   AT91_PMC_AUDIO_PLL_PMCEN, 0);
}