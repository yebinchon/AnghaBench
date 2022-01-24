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
struct ahci_host_priv {int /*<<< orphan*/  rsts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_host_priv*) ; 
 int FUNC2 (struct ahci_host_priv*) ; 
 int FUNC3 (struct ahci_host_priv*) ; 
 int FUNC4 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct ahci_host_priv *hpriv)
{
	int rc;

	rc = FUNC4(hpriv);
	if (rc)
		return rc;

	rc = FUNC2(hpriv);
	if (rc)
		goto disable_regulator;

	rc = FUNC6(hpriv->rsts);
	if (rc)
		goto disable_clks;

	rc = FUNC3(hpriv);
	if (rc)
		goto disable_resets;

	return 0;

disable_resets:
	FUNC5(hpriv->rsts);

disable_clks:
	FUNC0(hpriv);

disable_regulator:
	FUNC1(hpriv);

	return rc;
}