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
struct platform_device {int dummy; } ;
struct ahci_host_priv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ahci_host_priv*) ; 
 int FUNC1 (struct ahci_host_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_host_priv*) ; 
 int FUNC3 (struct ahci_host_priv*) ; 
 struct ahci_host_priv* FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct platform_device*,struct ahci_host_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ahci_platform_sht ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct ahci_host_priv*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	int rc;
	struct ahci_host_priv *hpriv;

	hpriv = FUNC4(pdev, 0);
	if (FUNC0(hpriv))
		return FUNC1(hpriv);

	rc = FUNC3(hpriv);
	if (rc)
		return rc;

	rc = FUNC5(pdev, hpriv,
				     FUNC6(pdev, hpriv),
				     &ahci_platform_sht);
	if (rc)
		goto disable_resources;

	return 0;
disable_resources:
	FUNC2(hpriv);
	return rc;
}