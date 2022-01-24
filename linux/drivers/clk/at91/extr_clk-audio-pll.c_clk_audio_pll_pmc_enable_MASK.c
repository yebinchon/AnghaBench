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
struct clk_audio_pmc {int /*<<< orphan*/  qdpmc; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PMC_AUDIO_PLL0 ; 
 int AT91_PMC_AUDIO_PLL_PMCEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AT91_PMC_AUDIO_PLL_QDPMC_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct clk_audio_pmc* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct clk_audio_pmc *apmc_ck = FUNC2(hw);

	FUNC1(apmc_ck->regmap, AT91_PMC_AUDIO_PLL0,
			   AT91_PMC_AUDIO_PLL_PMCEN |
			   AT91_PMC_AUDIO_PLL_QDPMC_MASK,
			   AT91_PMC_AUDIO_PLL_PMCEN |
			   FUNC0(apmc_ck->qdpmc));
	return 0;
}