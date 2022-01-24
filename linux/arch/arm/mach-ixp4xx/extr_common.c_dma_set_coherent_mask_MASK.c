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
typedef  int u64 ;
struct device {int coherent_dma_mask; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIO ; 
 scalar_t__ FUNC1 (struct device*) ; 

int FUNC2(struct device *dev, u64 mask)
{
	if (FUNC1(dev))
		mask &= FUNC0(28); /* 64 MB */

	if ((mask & FUNC0(28)) == FUNC0(28)) {
		dev->coherent_dma_mask = mask;
		return 0;
	}

	return -EIO;		/* device wanted sub-64MB mask */
}