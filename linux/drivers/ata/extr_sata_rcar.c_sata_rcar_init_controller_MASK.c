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
struct sata_rcar_priv {int type; int /*<<< orphan*/  sataint_mask; } ;
struct ata_host {int /*<<< orphan*/  dev; struct sata_rcar_priv* private_data; } ;

/* Variables and functions */
#define  RCAR_GEN1_SATA 131 
#define  RCAR_GEN2_SATA 130 
#define  RCAR_GEN3_SATA 129 
#define  RCAR_R8A7790_ES1_SATA 128 
 int /*<<< orphan*/  SATAINTMASK_ALL_GEN1 ; 
 int /*<<< orphan*/  SATAINTMASK_ALL_GEN2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sata_rcar_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct sata_rcar_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct sata_rcar_priv*) ; 

__attribute__((used)) static void FUNC4(struct ata_host *host)
{
	struct sata_rcar_priv *priv = host->private_data;

	priv->sataint_mask = SATAINTMASK_ALL_GEN2;

	/* reset and setup phy */
	switch (priv->type) {
	case RCAR_GEN1_SATA:
		priv->sataint_mask = SATAINTMASK_ALL_GEN1;
		FUNC1(priv);
		break;
	case RCAR_GEN2_SATA:
	case RCAR_R8A7790_ES1_SATA:
		FUNC2(priv);
		break;
	case RCAR_GEN3_SATA:
		break;
	default:
		FUNC0(host->dev, "SATA phy is not initialized\n");
		break;
	}

	FUNC3(priv);
}