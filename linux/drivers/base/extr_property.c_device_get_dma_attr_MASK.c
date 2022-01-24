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
struct device {scalar_t__ of_node; } ;
typedef  enum dev_dma_attr { ____Placeholder_dev_dma_attr } dev_dma_attr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int DEV_DMA_COHERENT ; 
 int DEV_DMA_NON_COHERENT ; 
 int DEV_DMA_NOT_SUPPORTED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

enum dev_dma_attr FUNC4(struct device *dev)
{
	enum dev_dma_attr attr = DEV_DMA_NOT_SUPPORTED;

	if (FUNC1(CONFIG_OF) && dev->of_node) {
		if (FUNC3(dev->of_node))
			attr = DEV_DMA_COHERENT;
		else
			attr = DEV_DMA_NON_COHERENT;
	} else
		attr = FUNC2(FUNC0(dev));

	return attr;
}