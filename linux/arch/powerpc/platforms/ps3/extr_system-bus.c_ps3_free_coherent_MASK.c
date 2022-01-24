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
struct ps3_system_bus_device {int /*<<< orphan*/  d_region; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 struct ps3_system_bus_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC4(struct device *_dev, size_t size, void *vaddr,
			      dma_addr_t dma_handle, unsigned long attrs)
{
	struct ps3_system_bus_device *dev = FUNC2(_dev);

	FUNC3(dev->d_region, dma_handle, size);
	FUNC0((unsigned long)vaddr, FUNC1(size));
}