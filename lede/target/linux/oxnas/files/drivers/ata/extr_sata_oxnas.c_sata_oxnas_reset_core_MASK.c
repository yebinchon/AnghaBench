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
struct sata_oxnas_host_priv {int n_ports; int /*<<< orphan*/  rst_link; int /*<<< orphan*/  rst_sata; int /*<<< orphan*/  rst_phy; int /*<<< orphan*/  clk; } ;
struct ata_host {int /*<<< orphan*/ * ports; struct sata_oxnas_host_priv* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ata_host*) ; 

__attribute__((used)) static void FUNC7(struct ata_host *ah)
{
	struct sata_oxnas_host_priv *host_priv = ah->private_data;
	int n;

	FUNC0("ENTER\n");
	FUNC1(host_priv->clk);

	FUNC2(host_priv->rst_sata);
	FUNC2(host_priv->rst_link);
	FUNC2(host_priv->rst_phy);

	FUNC5(50);

	/* un-reset the PHY, then Link and Controller */
	FUNC3(host_priv->rst_phy);
	FUNC5(50);

	FUNC3(host_priv->rst_sata);
	FUNC3(host_priv->rst_link);
	FUNC5(50);

	FUNC6(ah);
	/* tune for sata compatibility */
	FUNC4(ah->ports[0], 0x60, 0x2988);

	for (n = 0; n < host_priv->n_ports; n++) {
		/* each port in turn */
		FUNC4(ah->ports[n], 0x70, 0x55629);
	}
	FUNC5(50);
}