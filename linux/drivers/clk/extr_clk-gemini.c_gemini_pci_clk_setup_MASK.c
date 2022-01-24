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
struct regmap {int dummy; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; scalar_t__ flags; int /*<<< orphan*/ * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct clk_gemini_pci {struct clk_hw hw; struct regmap* map; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,struct clk_hw*) ; 
 int /*<<< orphan*/  gemini_pci_clk_ops ; 
 int /*<<< orphan*/  FUNC2 (struct clk_gemini_pci*) ; 
 struct clk_gemini_pci* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clk_hw *FUNC4(const char *name,
					   const char *parent_name,
					   struct regmap *map)
{
	struct clk_gemini_pci *pciclk;
	struct clk_init_data init;
	int ret;

	pciclk = FUNC3(sizeof(*pciclk), GFP_KERNEL);
	if (!pciclk)
		return FUNC0(-ENOMEM);

	init.name = name;
	init.ops = &gemini_pci_clk_ops;
	init.flags = 0;
	init.parent_names = &parent_name;
	init.num_parents = 1;
	pciclk->map = map;
	pciclk->hw.init = &init;

	ret = FUNC1(NULL, &pciclk->hw);
	if (ret) {
		FUNC2(pciclk);
		return FUNC0(ret);
	}

	return &pciclk->hw;
}