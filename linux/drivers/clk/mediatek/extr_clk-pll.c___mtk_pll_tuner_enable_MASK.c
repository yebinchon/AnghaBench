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
struct mtk_clk_pll {int /*<<< orphan*/  tuner_addr; int /*<<< orphan*/  tuner_en_addr; TYPE_1__* data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuner_en_bit; } ;

/* Variables and functions */
 int AUDPLL_TUNER_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mtk_clk_pll *pll)
{
	u32 r;

	if (pll->tuner_en_addr) {
		r = FUNC1(pll->tuner_en_addr) | FUNC0(pll->data->tuner_en_bit);
		FUNC2(r, pll->tuner_en_addr);
	} else if (pll->tuner_addr) {
		r = FUNC1(pll->tuner_addr) | AUDPLL_TUNER_EN;
		FUNC2(r, pll->tuner_addr);
	}
}