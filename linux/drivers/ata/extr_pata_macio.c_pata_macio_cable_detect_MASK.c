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
struct pata_macio_priv {scalar_t__ kind; struct device_node* node; } ;
struct device_node {int dummy; } ;
struct ata_port {struct pata_macio_priv* private_data; } ;

/* Variables and functions */
 int ATA_CBL_PATA40 ; 
 int ATA_CBL_PATA40_SHORT ; 
 int ATA_CBL_PATA80 ; 
 scalar_t__ controller_k2_ata6 ; 
 scalar_t__ controller_kl_ata4 ; 
 scalar_t__ controller_sh_ata6 ; 
 scalar_t__ controller_un_ata6 ; 
 scalar_t__ FUNC0 (struct device_node*,char*) ; 
 struct device_node* FUNC1 (char*) ; 
 char* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC5(struct ata_port *ap)
{
	struct pata_macio_priv *priv = ap->private_data;

	/* Get cable type from device-tree */
	if (priv->kind == controller_kl_ata4 ||
	    priv->kind == controller_un_ata6 ||
	    priv->kind == controller_k2_ata6 ||
	    priv->kind == controller_sh_ata6) {
		const char* cable = FUNC2(priv->node, "cable-type",
						    NULL);
		struct device_node *root = FUNC1("/");
		const char *model = FUNC2(root, "model", NULL);

		FUNC3(root);

		if (cable && !FUNC4(cable, "80-", 3)) {
			/* Some drives fail to detect 80c cable in PowerBook
			 * These machine use proprietary short IDE cable
			 * anyway
			 */
			if (!FUNC4(model, "PowerBook", 9))
				return ATA_CBL_PATA40_SHORT;
			else
				return ATA_CBL_PATA80;
		}
	}

	/* G5's seem to have incorrect cable type in device-tree.
	 * Let's assume they always have a 80 conductor cable, this seem to
	 * be always the case unless the user mucked around
	 */
	if (FUNC0(priv->node, "K2-UATA") ||
	    FUNC0(priv->node, "shasta-ata"))
		return ATA_CBL_PATA80;

	/* Anything else is 40 connectors */
	return ATA_CBL_PATA40;
}