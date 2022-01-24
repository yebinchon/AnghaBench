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
struct xilly_mapping {size_t size; int direction; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  device; } ;
struct xilly_endpoint {int /*<<< orphan*/  dev; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xilly_mapping*) ; 
 int /*<<< orphan*/  FUNC1 (struct xilly_mapping*) ; 
 struct xilly_mapping* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,size_t,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  xilly_pci_unmap ; 

__attribute__((used)) static int FUNC6(struct xilly_endpoint *ep,
				void *ptr,
				size_t size,
				int direction,
				dma_addr_t *ret_dma_handle
	)
{
	int pci_direction;
	dma_addr_t addr;
	struct xilly_mapping *this;

	this = FUNC2(sizeof(*this), GFP_KERNEL);
	if (!this)
		return -ENOMEM;

	pci_direction = FUNC5(direction);

	addr = FUNC4(ep->pdev, ptr, size, pci_direction);

	if (FUNC3(ep->pdev, addr)) {
		FUNC1(this);
		return -ENODEV;
	}

	this->device = ep->pdev;
	this->dma_addr = addr;
	this->size = size;
	this->direction = pci_direction;

	*ret_dma_handle = addr;

	return FUNC0(ep->dev, xilly_pci_unmap, this);
}