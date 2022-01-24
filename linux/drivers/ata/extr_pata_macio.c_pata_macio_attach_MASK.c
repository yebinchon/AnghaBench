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
struct pata_macio_priv {struct macio_dev* mdev; TYPE_2__* dev; int /*<<< orphan*/  node; } ;
struct of_device_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_5__ {TYPE_2__ dev; } ;
struct macio_dev {int /*<<< orphan*/  media_bay; TYPE_1__ ofdev; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 struct pata_macio_priv* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct macio_dev*) ; 
 unsigned long FUNC6 (struct macio_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct macio_dev*) ; 
 scalar_t__ FUNC8 (struct macio_dev*,int,char*) ; 
 int FUNC9 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct macio_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pata_macio_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct macio_dev *mdev,
			     const struct of_device_id *match)
{
	struct pata_macio_priv	*priv;
	resource_size_t		tfregs, dmaregs = 0;
	unsigned long		irq;
	int			rc;

	/* Check for broken device-trees */
	if (FUNC9(mdev) == 0) {
		FUNC0(&mdev->ofdev.dev,
			"No addresses for controller\n");
		return -ENXIO;
	}

	/* Enable managed resources */
	FUNC5(mdev);

	/* Allocate and init private data structure */
	priv = FUNC2(&mdev->ofdev.dev,
			    sizeof(struct pata_macio_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->node = FUNC11(mdev->ofdev.dev.of_node);
	priv->mdev = mdev;
	priv->dev = &mdev->ofdev.dev;

	/* Request memory resource for taskfile registers */
	if (FUNC8(mdev, 0, "pata-macio")) {
		FUNC0(&mdev->ofdev.dev,
			"Cannot obtain taskfile resource\n");
		return -EBUSY;
	}
	tfregs = FUNC10(mdev, 0);

	/* Request resources for DMA registers if any */
	if (FUNC9(mdev) >= 2) {
		if (FUNC8(mdev, 1, "pata-macio-dma"))
			FUNC0(&mdev->ofdev.dev,
				"Cannot obtain DMA resource\n");
		else
			dmaregs = FUNC10(mdev, 1);
	}

	/*
	 * Fixup missing IRQ for some old implementations with broken
	 * device-trees.
	 *
	 * This is a bit bogus, it should be fixed in the device-tree itself,
	 * via the existing macio fixups, based on the type of interrupt
	 * controller in the machine. However, I have no test HW for this case,
	 * and this trick works well enough on those old machines...
	 */
	if (FUNC7(mdev) == 0) {
		FUNC1(&mdev->ofdev.dev,
			 "No interrupts for controller, using 13\n");
		irq = FUNC3(NULL, 13);
	} else
		irq = FUNC6(mdev, 0);

	/* Prevvent media bay callbacks until fully registered */
	FUNC4(priv->mdev->media_bay);

	/* Get register addresses and call common initialization */
	rc = FUNC12(priv,
				    tfregs,		/* Taskfile regs */
				    dmaregs,		/* DBDMA regs */
				    0,			/* Feature control */
				    irq);
	FUNC13(priv->mdev->media_bay);

	return rc;
}