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
 int FUNC0 (struct device*,struct scatterlist*,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ,int,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct scatterlist *sglist,
			    int nelems, enum dma_data_direction direction,
			    unsigned long attrs)
{
	if (FUNC2(dev, attrs))
		return FUNC0(dev, sglist, nelems, direction, attrs);
	return FUNC4(dev, FUNC3(dev), sglist, nelems,
				FUNC1(dev), direction, attrs);
}