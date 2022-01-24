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
struct zpci_dev {int /*<<< orphan*/  mapped_pages; } ;
struct scatterlist {scalar_t__ offset; scalar_t__ length; } ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ DMA_MAPPING_ERROR ; 
 int DMA_NONE ; 
 int DMA_TO_DEVICE ; 
 int ENOMEM ; 
 unsigned long FUNC0 (size_t) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  ZPCI_PTE_INVALID ; 
 int ZPCI_PTE_VALID ; 
 int ZPCI_TABLE_PROTECTED ; 
 int FUNC1 (struct zpci_dev*,scalar_t__,size_t,int) ; 
 int FUNC2 (struct zpci_dev*,unsigned long,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct zpci_dev*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC8 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 struct zpci_dev* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct device *dev, struct scatterlist *sg,
			     size_t size, dma_addr_t *handle,
			     enum dma_data_direction dir)
{
	unsigned long nr_pages = FUNC0(size) >> PAGE_SHIFT;
	struct zpci_dev *zdev = FUNC11(FUNC10(dev));
	dma_addr_t dma_addr_base, dma_addr;
	int flags = ZPCI_PTE_VALID;
	struct scatterlist *s;
	unsigned long pa = 0;
	int ret;

	dma_addr_base = FUNC4(dev, nr_pages);
	if (dma_addr_base == DMA_MAPPING_ERROR)
		return -ENOMEM;

	dma_addr = dma_addr_base;
	if (dir == DMA_NONE || dir == DMA_TO_DEVICE)
		flags |= ZPCI_TABLE_PROTECTED;

	for (s = sg; dma_addr < dma_addr_base + size; s = FUNC8(s)) {
		pa = FUNC7(FUNC9(s));
		ret = FUNC2(zdev, pa, dma_addr,
					 s->offset + s->length, flags);
		if (ret)
			goto unmap;

		dma_addr += s->offset + s->length;
	}
	ret = FUNC1(zdev, dma_addr_base, size, flags);
	if (ret)
		goto unmap;

	*handle = dma_addr_base;
	FUNC3(nr_pages, &zdev->mapped_pages);

	return ret;

unmap:
	FUNC6(zdev, 0, dma_addr_base, dma_addr - dma_addr_base,
			 ZPCI_PTE_INVALID);
	FUNC5(dev, dma_addr_base, nr_pages);
	FUNC12("map error:\n");
	FUNC13(ret, pa);
	return ret;
}