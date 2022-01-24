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
struct ahci_host_priv {int nports; int /*<<< orphan*/  phy_regulator; int /*<<< orphan*/  ahci_regulator; int /*<<< orphan*/ * target_pwrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct ahci_host_priv *hpriv)
{
	int i;

	for (i = 0; i < hpriv->nports; i++) {
		if (!hpriv->target_pwrs[i])
			continue;
		FUNC0(hpriv->target_pwrs[i]);
	}

	FUNC0(hpriv->ahci_regulator);
	FUNC0(hpriv->phy_regulator);
}