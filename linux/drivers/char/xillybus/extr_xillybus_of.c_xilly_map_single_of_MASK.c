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
struct xilly_endpoint {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xilly_mapping*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,size_t,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xilly_mapping*) ; 
 struct xilly_mapping* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xilly_of_unmap ; 

__attribute__((used)) static int FUNC5(struct xilly_endpoint *ep,
			       void *ptr,
			       size_t size,
			       int direction,
			       dma_addr_t *ret_dma_handle
	)
{
	dma_addr_t addr;
	struct xilly_mapping *this;

	this = FUNC4(sizeof(*this), GFP_KERNEL);
	if (!this)
		return -ENOMEM;

	addr = FUNC1(ep->dev, ptr, size, direction);

	if (FUNC2(ep->dev, addr)) {
		FUNC3(this);
		return -ENODEV;
	}

	this->device = ep->dev;
	this->dma_addr = addr;
	this->size = size;
	this->direction = direction;

	*ret_dma_handle = addr;

	return FUNC0(ep->dev, xilly_of_unmap, this);
}