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
struct mbus_dram_target_info {int dummy; } ;
struct ahci_host_priv {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_host_priv*,struct mbus_dram_target_info const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_host_priv*) ; 
 struct mbus_dram_target_info* FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct ahci_host_priv *hpriv)
{
	const struct mbus_dram_target_info *dram;
	int rc = 0;

	dram = FUNC2();
	if (dram)
		FUNC0(hpriv, dram);
	else
		rc = -ENODEV;

	FUNC1(hpriv);

	return rc;
}