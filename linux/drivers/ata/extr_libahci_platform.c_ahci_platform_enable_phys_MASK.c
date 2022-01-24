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
struct ahci_host_priv {int nports; int /*<<< orphan*/ * phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_MODE_SATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ahci_host_priv *hpriv)
{
	int rc, i;

	for (i = 0; i < hpriv->nports; i++) {
		rc = FUNC1(hpriv->phys[i]);
		if (rc)
			goto disable_phys;

		rc = FUNC4(hpriv->phys[i], PHY_MODE_SATA);
		if (rc) {
			FUNC0(hpriv->phys[i]);
			goto disable_phys;
		}

		rc = FUNC3(hpriv->phys[i]);
		if (rc) {
			FUNC0(hpriv->phys[i]);
			goto disable_phys;
		}
	}

	return 0;

disable_phys:
	while (--i >= 0) {
		FUNC2(hpriv->phys[i]);
		FUNC0(hpriv->phys[i]);
	}
	return rc;
}