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
struct tegra_aconnect {int /*<<< orphan*/  apb2ape_clk; int /*<<< orphan*/  ape_clk; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tegra_aconnect* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev)
{
	struct tegra_aconnect *aconnect = FUNC1(dev);

	FUNC0(aconnect->ape_clk);
	FUNC0(aconnect->apb2ape_clk);

	return 0;
}