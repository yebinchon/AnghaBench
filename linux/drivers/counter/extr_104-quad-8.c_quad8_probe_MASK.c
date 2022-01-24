#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct quad8_iio* priv; void* num_signals; void* signals; void* num_counts; void* counts; int /*<<< orphan*/ * ops; struct device* parent; void* name; } ;
struct quad8_iio {int base; TYPE_2__ counter; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {TYPE_1__ dev; void* name; void* channels; void* num_channels; int /*<<< orphan*/  modes; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INDIO_DIRECT_MODE ; 
 int QUAD8_CHAN_OP_ENABLE_COUNTERS ; 
 int QUAD8_CHAN_OP_RESET_COUNTERS ; 
 int QUAD8_CTR_CMR ; 
 int QUAD8_CTR_IDR ; 
 int QUAD8_CTR_IOR ; 
 int QUAD8_CTR_RLD ; 
 scalar_t__ QUAD8_EXTENT ; 
 int QUAD8_NUM_COUNTERS ; 
 int QUAD8_REG_CHAN_OP ; 
 int QUAD8_RLD_RESET_BP ; 
 int QUAD8_RLD_RESET_E ; 
 int QUAD8_RLD_RESET_FLAGS ; 
 int* base ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,scalar_t__) ; 
 void* FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,TYPE_2__*) ; 
 struct iio_dev* FUNC4 (struct device*,int) ; 
 int FUNC5 (struct device*,struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int,scalar_t__,void*) ; 
 struct quad8_iio* FUNC7 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 void* quad8_channels ; 
 void* quad8_counts ; 
 int /*<<< orphan*/  quad8_info ; 
 int /*<<< orphan*/  quad8_ops ; 
 void* quad8_signals ; 

__attribute__((used)) static int FUNC9(struct device *dev, unsigned int id)
{
	struct iio_dev *indio_dev;
	struct quad8_iio *quad8iio;
	int i, j;
	unsigned int base_offset;
	int err;

	if (!FUNC6(dev, base[id], QUAD8_EXTENT, FUNC2(dev))) {
		FUNC1(dev, "Unable to lock port addresses (0x%X-0x%X)\n",
			base[id], base[id] + QUAD8_EXTENT);
		return -EBUSY;
	}

	/* Allocate IIO device; this also allocates driver data structure */
	indio_dev = FUNC4(dev, sizeof(*quad8iio));
	if (!indio_dev)
		return -ENOMEM;

	/* Initialize IIO device */
	indio_dev->info = &quad8_info;
	indio_dev->modes = INDIO_DIRECT_MODE;
	indio_dev->num_channels = FUNC0(quad8_channels);
	indio_dev->channels = quad8_channels;
	indio_dev->name = FUNC2(dev);
	indio_dev->dev.parent = dev;

	/* Initialize Counter device and driver data */
	quad8iio = FUNC7(indio_dev);
	quad8iio->counter.name = FUNC2(dev);
	quad8iio->counter.parent = dev;
	quad8iio->counter.ops = &quad8_ops;
	quad8iio->counter.counts = quad8_counts;
	quad8iio->counter.num_counts = FUNC0(quad8_counts);
	quad8iio->counter.signals = quad8_signals;
	quad8iio->counter.num_signals = FUNC0(quad8_signals);
	quad8iio->counter.priv = quad8iio;
	quad8iio->base = base[id];

	/* Reset all counters and disable interrupt function */
	FUNC8(QUAD8_CHAN_OP_RESET_COUNTERS, base[id] + QUAD8_REG_CHAN_OP);
	/* Set initial configuration for all counters */
	for (i = 0; i < QUAD8_NUM_COUNTERS; i++) {
		base_offset = base[id] + 2 * i;
		/* Reset Byte Pointer */
		FUNC8(QUAD8_CTR_RLD | QUAD8_RLD_RESET_BP, base_offset + 1);
		/* Reset Preset Register */
		for (j = 0; j < 3; j++)
			FUNC8(0x00, base_offset);
		/* Reset Borrow, Carry, Compare, and Sign flags */
		FUNC8(QUAD8_CTR_RLD | QUAD8_RLD_RESET_FLAGS, base_offset + 1);
		/* Reset Error flag */
		FUNC8(QUAD8_CTR_RLD | QUAD8_RLD_RESET_E, base_offset + 1);
		/* Binary encoding; Normal count; non-quadrature mode */
		FUNC8(QUAD8_CTR_CMR, base_offset + 1);
		/* Disable A and B inputs; preset on index; FLG1 as Carry */
		FUNC8(QUAD8_CTR_IOR, base_offset + 1);
		/* Disable index function; negative index polarity */
		FUNC8(QUAD8_CTR_IDR, base_offset + 1);
	}
	/* Enable all counters */
	FUNC8(QUAD8_CHAN_OP_ENABLE_COUNTERS, base[id] + QUAD8_REG_CHAN_OP);

	/* Register IIO device */
	err = FUNC5(dev, indio_dev);
	if (err)
		return err;

	/* Register Counter device */
	return FUNC3(dev, &quad8iio->counter);
}