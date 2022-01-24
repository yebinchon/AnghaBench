#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pata_macio_priv {scalar_t__ kind; scalar_t__ kauai_fcr; TYPE_2__* pdev; int /*<<< orphan*/  aapl_bus_id; int /*<<< orphan*/  node; scalar_t__ mediabay; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int (* feature_call ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int IDE_WAKEUP_DELAY_MS ; 
 int KAUAI_FCR_UATA_ENABLE ; 
 int KAUAI_FCR_UATA_MAGIC ; 
 int KAUAI_FCR_UATA_RESET_N ; 
 int /*<<< orphan*/  PMAC_FTR_IDE_ENABLE ; 
 int /*<<< orphan*/  PMAC_FTR_IDE_RESET ; 
 scalar_t__ controller_ohare ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 TYPE_1__ ppc_md ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct pata_macio_priv *priv, int resume)
{
	FUNC0(priv->dev, "Enabling & resetting... \n");

	if (priv->mediabay)
		return;

	if (priv->kind == controller_ohare && !resume) {
		/* The code below is having trouble on some ohare machines
		 * (timing related ?). Until I can put my hand on one of these
		 * units, I keep the old way
		 */
		ppc_md.feature_call(PMAC_FTR_IDE_ENABLE, priv->node, 0, 1);
	} else {
		int rc;

 		/* Reset and enable controller */
		rc = ppc_md.feature_call(PMAC_FTR_IDE_RESET,
					 priv->node, priv->aapl_bus_id, 1);
		ppc_md.feature_call(PMAC_FTR_IDE_ENABLE,
				    priv->node, priv->aapl_bus_id, 1);
		FUNC2(10);
		/* Only bother waiting if there's a reset control */
		if (rc == 0) {
			ppc_md.feature_call(PMAC_FTR_IDE_RESET,
					    priv->node, priv->aapl_bus_id, 0);
			FUNC2(IDE_WAKEUP_DELAY_MS);
		}
	}

	/* If resuming a PCI device, restore the config space here */
	if (priv->pdev && resume) {
		int rc;

		FUNC3(priv->pdev);
		rc = FUNC5(priv->pdev);
		if (rc)
			FUNC1(&priv->pdev->dev,
				"Failed to enable device after resume (%d)\n",
				rc);
		else
			FUNC4(priv->pdev);
	}

	/* On Kauai, initialize the FCR. We don't perform a reset, doesn't really
	 * seem necessary and speeds up the boot process
	 */
	if (priv->kauai_fcr)
		FUNC10(KAUAI_FCR_UATA_MAGIC |
		       KAUAI_FCR_UATA_RESET_N |
		       KAUAI_FCR_UATA_ENABLE, priv->kauai_fcr);
}