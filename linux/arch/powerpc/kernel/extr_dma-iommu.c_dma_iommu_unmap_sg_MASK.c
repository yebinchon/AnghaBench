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
struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,struct scatterlist*,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scatterlist*,int,int,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct scatterlist *sglist,
		int nelems, enum dma_data_direction direction,
		unsigned long attrs)
{
	if (!FUNC1(dev, attrs))
		FUNC3(FUNC2(dev), sglist, nelems,
			   direction, attrs);
	else
		FUNC0(dev, sglist, nelems, direction, attrs);
}