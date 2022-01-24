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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  api_clk ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsp_clk ; 
 scalar_t__ dsp_use ; 

__attribute__((used)) static void FUNC3(unsigned int id)
{
	if (id == 0 || id == 2) {
		if (--dsp_use == 0) {
			if (!FUNC0(api_clk)) {
				FUNC1(api_clk);
				FUNC2(api_clk);
			}
			if (!FUNC0(dsp_clk)) {
				FUNC1(dsp_clk);
				FUNC2(dsp_clk);
			}
		}
	}
}