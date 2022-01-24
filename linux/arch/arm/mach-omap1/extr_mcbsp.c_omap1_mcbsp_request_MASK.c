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

/* Variables and functions */
 int DPS_RSTCT2_PER_EN ; 
 int /*<<< orphan*/  DSP_RSTCT2 ; 
 int DSP_RSTCT2_WD_PER_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  api_clk ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  dsp_clk ; 
 int /*<<< orphan*/  dsp_use ; 

__attribute__((used)) static void FUNC5(unsigned int id)
{
	/*
	 * On 1510, 1610 and 1710, McBSP1 and McBSP3
	 * are DSP public peripherals.
	 */
	if (id == 0 || id == 2) {
		if (dsp_use++ == 0) {
			api_clk = FUNC4(NULL, "api_ck");
			dsp_clk = FUNC4(NULL, "dsp_ck");
			if (!FUNC0(api_clk) && !FUNC0(dsp_clk)) {
				FUNC3(api_clk);
				FUNC3(dsp_clk);

				/*
				 * DSP external peripheral reset
				 * FIXME: This should be moved to dsp code
				 */
				FUNC2(FUNC1(DSP_RSTCT2) | DPS_RSTCT2_PER_EN |
						DSP_RSTCT2_WD_PER_EN, DSP_RSTCT2);
			}
		}
	}
}