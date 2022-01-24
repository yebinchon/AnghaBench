#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sram_parameters {unsigned int sram_size; int /*<<< orphan*/  sram_offset; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  ctl; int /*<<< orphan*/  srbarea0; int /*<<< orphan*/  srbar0; } ;

/* Variables and functions */
 int EINVAL ; 
 int L2CR_L2E ; 
 int L2CR_L2FI ; 
 int L2CR_SRAM_EIGHTH ; 
 int L2CR_SRAM_FULL ; 
 int L2CR_SRAM_HALF ; 
 int L2CR_SRAM_QUART ; 
 int L2SRAM_BARE_MSK_HI4 ; 
 int L2SRAM_BAR_MSK_LO18 ; 
#define  LOCK_WAYS_EIGHTH 131 
#define  LOCK_WAYS_FULL 130 
#define  LOCK_WAYS_HALF 129 
#define  LOCK_WAYS_TWO_EIGHTH 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct sram_parameters*) ; 
 long FUNC4 (struct platform_device*,struct sram_parameters) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* l2ctlr ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *dev)
{
	long rval;
	unsigned int rem;
	unsigned char ways;
	const unsigned int *prop;
	unsigned int l2cache_size;
	struct sram_parameters sram_params;

	if (!dev->dev.of_node) {
		FUNC1(&dev->dev, "Device's OF-node is NULL\n");
		return -EINVAL;
	}

	prop = FUNC7(dev->dev.of_node, "cache-size", NULL);
	if (!prop) {
		FUNC1(&dev->dev, "Missing L2 cache-size\n");
		return -EINVAL;
	}
	l2cache_size = *prop;

	if (FUNC3(&sram_params))
		return 0; /* fall back to L2 cache only */

	rem = l2cache_size % sram_params.sram_size;
	ways = LOCK_WAYS_FULL * sram_params.sram_size / l2cache_size;
	if (rem || (ways & (ways - 1))) {
		FUNC1(&dev->dev, "Illegal cache-sram-size in command line\n");
		return -EINVAL;
	}

	l2ctlr = FUNC8(dev->dev.of_node, 0);
	if (!l2ctlr) {
		FUNC1(&dev->dev, "Can't map L2 controller\n");
		return -EINVAL;
	}

	/*
	 * Write bits[0-17] to srbar0
	 */
	FUNC9(&l2ctlr->srbar0,
		FUNC6(sram_params.sram_offset) & L2SRAM_BAR_MSK_LO18);

	/*
	 * Write bits[18-21] to srbare0
	 */
#ifdef CONFIG_PHYS_64BIT
	out_be32(&l2ctlr->srbarea0,
		upper_32_bits(sram_params.sram_offset) & L2SRAM_BARE_MSK_HI4);
#endif

	FUNC0(&l2ctlr->ctl, L2CR_L2E, L2CR_L2FI);

	switch (ways) {
	case LOCK_WAYS_EIGHTH:
		FUNC10(&l2ctlr->ctl,
			L2CR_L2E | L2CR_L2FI | L2CR_SRAM_EIGHTH);
		break;

	case LOCK_WAYS_TWO_EIGHTH:
		FUNC10(&l2ctlr->ctl,
			L2CR_L2E | L2CR_L2FI | L2CR_SRAM_QUART);
		break;

	case LOCK_WAYS_HALF:
		FUNC10(&l2ctlr->ctl,
			L2CR_L2E | L2CR_L2FI | L2CR_SRAM_HALF);
		break;

	case LOCK_WAYS_FULL:
	default:
		FUNC10(&l2ctlr->ctl,
			L2CR_L2E | L2CR_L2FI | L2CR_SRAM_FULL);
		break;
	}
	FUNC2();

	rval = FUNC4(dev, sram_params);
	if (rval < 0) {
		FUNC1(&dev->dev, "Can't instantiate Cache-SRAM\n");
		FUNC5(l2ctlr);
		return -EINVAL;
	}

	return 0;
}