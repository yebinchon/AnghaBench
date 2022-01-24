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
struct device {int dummy; } ;
struct ahci_host_priv {int nports; scalar_t__* target_pwrs; scalar_t__* clks; scalar_t__ got_runtime_pm; } ;

/* Variables and functions */
 int AHCI_MAX_CLKS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct device *dev, void *res)
{
	struct ahci_host_priv *hpriv = res;
	int c;

	if (hpriv->got_runtime_pm) {
		FUNC3(dev);
		FUNC2(dev);
	}

	for (c = 0; c < AHCI_MAX_CLKS && hpriv->clks[c]; c++)
		FUNC0(hpriv->clks[c]);
	/*
	 * The regulators are tied to child node device and not to the
	 * SATA device itself. So we can't use devm for automatically
	 * releasing them. We have to do it manually here.
	 */
	for (c = 0; c < hpriv->nports; c++)
		if (hpriv->target_pwrs && hpriv->target_pwrs[c])
			FUNC4(hpriv->target_pwrs[c]);

	FUNC1(hpriv->target_pwrs);
}