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
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_5__ {scalar_t__ exists; } ;
struct moxtet {int dev_irq; TYPE_2__* dev; TYPE_1__ irq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 struct moxtet* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct moxtet*) ; 
 int FUNC4 (struct moxtet*) ; 
 int FUNC5 (struct moxtet*) ; 
 int /*<<< orphan*/  FUNC6 (struct moxtet*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct moxtet*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct moxtet*) ; 
 int FUNC11 (struct spi_device*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct moxtet *moxtet;
	int ret;

	ret = FUNC11(spi);
	if (ret < 0)
		return ret;

	moxtet = FUNC2(&spi->dev, sizeof(struct moxtet),
			      GFP_KERNEL);
	if (!moxtet)
		return -ENOMEM;

	moxtet->dev = &spi->dev;
	FUNC10(spi, moxtet);

	FUNC7(&moxtet->lock);

	moxtet->dev_irq = FUNC8(moxtet->dev->of_node, 0);
	if (moxtet->dev_irq == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	if (moxtet->dev_irq <= 0) {
		FUNC0(moxtet->dev, "No IRQ resource found\n");
		return -ENXIO;
	}

	ret = FUNC3(moxtet);
	if (ret < 0)
		return ret;

	if (moxtet->irq.exists) {
		ret = FUNC4(moxtet);
		if (ret < 0)
			return ret;
	}

	FUNC9(moxtet);
	FUNC6(moxtet);

	ret = FUNC5(moxtet);
	if (ret < 0)
		FUNC1(moxtet->dev, "Failed creating debugfs entries: %i\n",
			 ret);

	return 0;
}