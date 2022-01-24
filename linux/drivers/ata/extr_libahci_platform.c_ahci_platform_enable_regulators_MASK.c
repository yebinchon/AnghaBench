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
struct ahci_host_priv {int nports; scalar_t__ ahci_regulator; scalar_t__ phy_regulator; scalar_t__* target_pwrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 

int FUNC2(struct ahci_host_priv *hpriv)
{
	int rc, i;

	rc = FUNC1(hpriv->ahci_regulator);
	if (rc)
		return rc;

	rc = FUNC1(hpriv->phy_regulator);
	if (rc)
		goto disable_ahci_pwrs;

	for (i = 0; i < hpriv->nports; i++) {
		if (!hpriv->target_pwrs[i])
			continue;

		rc = FUNC1(hpriv->target_pwrs[i]);
		if (rc)
			goto disable_target_pwrs;
	}

	return 0;

disable_target_pwrs:
	while (--i >= 0)
		if (hpriv->target_pwrs[i])
			FUNC0(hpriv->target_pwrs[i]);

	FUNC0(hpriv->phy_regulator);
disable_ahci_pwrs:
	FUNC0(hpriv->ahci_regulator);
	return rc;
}