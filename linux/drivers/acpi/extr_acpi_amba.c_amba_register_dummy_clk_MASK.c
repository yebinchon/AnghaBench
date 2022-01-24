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
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*,char*,int /*<<< orphan*/ *) ; 
 struct clk* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	static struct clk *amba_dummy_clk;

	/* If clock already registered */
	if (amba_dummy_clk)
		return;

	amba_dummy_clk = FUNC1(NULL, "apb_pclk", NULL, 0, 0);
	FUNC0(amba_dummy_clk, "apb_pclk", NULL);
}