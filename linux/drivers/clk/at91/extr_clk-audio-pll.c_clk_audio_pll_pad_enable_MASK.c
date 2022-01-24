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
struct clk_audio_pad {int /*<<< orphan*/  regmap; int /*<<< orphan*/  div; int /*<<< orphan*/  qdaudio; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PMC_AUDIO_PLL0 ; 
 int /*<<< orphan*/  AT91_PMC_AUDIO_PLL1 ; 
 int /*<<< orphan*/  AT91_PMC_AUDIO_PLL_PADEN ; 
 int /*<<< orphan*/  AT91_PMC_AUDIO_PLL_QDPAD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_audio_pad* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct clk_audio_pad *apad_ck = FUNC2(hw);

	FUNC1(apad_ck->regmap, AT91_PMC_AUDIO_PLL1,
			   AT91_PMC_AUDIO_PLL_QDPAD_MASK,
			   FUNC0(apad_ck->qdaudio, apad_ck->div));
	FUNC1(apad_ck->regmap, AT91_PMC_AUDIO_PLL0,
			   AT91_PMC_AUDIO_PLL_PADEN, AT91_PMC_AUDIO_PLL_PADEN);

	return 0;
}