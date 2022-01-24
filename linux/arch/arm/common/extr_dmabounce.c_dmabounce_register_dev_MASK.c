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
struct TYPE_4__ {int /*<<< orphan*/  pool; } ;
struct dmabounce_device_info {int (* needs_bounce ) (struct device*,dma_addr_t,size_t) ;TYPE_2__ small; int /*<<< orphan*/  attr_res; scalar_t__ bounce_count; scalar_t__ map_op_count; scalar_t__ total_allocs; int /*<<< orphan*/  lock; int /*<<< orphan*/  safe_buffers; struct device* dev; TYPE_2__ large; } ;
struct TYPE_3__ {struct dmabounce_device_info* dmabounce; } ;
struct device {TYPE_1__ archdata; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_dmabounce_stats ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,struct device*,char*,unsigned long) ; 
 int /*<<< orphan*/  dmabounce_ops ; 
 int /*<<< orphan*/  FUNC6 (struct dmabounce_device_info*) ; 
 struct dmabounce_device_info* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int /*<<< orphan*/ *) ; 

int FUNC10(struct device *dev, unsigned long small_buffer_size,
		unsigned long large_buffer_size,
		int (*needs_bounce_fn)(struct device *, dma_addr_t, size_t))
{
	struct dmabounce_device_info *device_info;
	int ret;

	device_info = FUNC7(sizeof(struct dmabounce_device_info), GFP_ATOMIC);
	if (!device_info) {
		FUNC1(dev,
			"Could not allocated dmabounce_device_info\n");
		return -ENOMEM;
	}

	ret = FUNC5(&device_info->small, dev,
				  "small_dmabounce_pool", small_buffer_size);
	if (ret) {
		FUNC1(dev,
			"dmabounce: could not allocate DMA pool for %ld byte objects\n",
			small_buffer_size);
		goto err_free;
	}

	if (large_buffer_size) {
		ret = FUNC5(&device_info->large, dev,
					  "large_dmabounce_pool",
					  large_buffer_size);
		if (ret) {
			FUNC1(dev,
				"dmabounce: could not allocate DMA pool for %ld byte objects\n",
				large_buffer_size);
			goto err_destroy;
		}
	}

	device_info->dev = dev;
	FUNC0(&device_info->safe_buffers);
	FUNC8(&device_info->lock);
	device_info->needs_bounce = needs_bounce_fn;

#ifdef STATS
	device_info->total_allocs = 0;
	device_info->map_op_count = 0;
	device_info->bounce_count = 0;
	device_info->attr_res = device_create_file(dev, &dev_attr_dmabounce_stats);
#endif

	dev->archdata.dmabounce = device_info;
	FUNC9(dev, &dmabounce_ops);

	FUNC2(dev, "dmabounce: registered device\n");

	return 0;

 err_destroy:
	FUNC4(device_info->small.pool);
 err_free:
	FUNC6(device_info);
	return ret;
}