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
struct clk_gemini_pci {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEMINI_GLOBAL_CLOCK_CONTROL ; 
 int /*<<< orphan*/  PCI_CLKRUN_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_gemini_pci* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC2(struct clk_hw *hw)
{
	struct clk_gemini_pci *pciclk = FUNC1(hw);

	FUNC0(pciclk->map, GEMINI_GLOBAL_CLOCK_CONTROL,
			   PCI_CLKRUN_EN, 0);
}