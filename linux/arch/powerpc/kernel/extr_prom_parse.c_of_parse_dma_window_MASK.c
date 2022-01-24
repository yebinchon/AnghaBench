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
typedef  int u32 ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (struct device_node*) ; 
 void* FUNC2 (struct device_node*) ; 
 void* FUNC3 (int /*<<< orphan*/  const*,int) ; 

void FUNC4(struct device_node *dn, const __be32 *dma_window,
			 unsigned long *busno, unsigned long *phys,
			 unsigned long *size)
{
	u32 cells;
	const __be32 *prop;

	/* busno is always one cell */
	*busno = FUNC3(dma_window, 1);
	dma_window++;

	prop = FUNC0(dn, "ibm,#dma-address-cells", NULL);
	if (!prop)
		prop = FUNC0(dn, "#address-cells", NULL);

	cells = prop ? FUNC3(prop, 1) : FUNC1(dn);
	*phys = FUNC3(dma_window, cells);

	dma_window += cells;

	prop = FUNC0(dn, "ibm,#dma-size-cells", NULL);
	cells = prop ? FUNC3(prop, 1) : FUNC2(dn);
	*size = FUNC3(dma_window, cells);
}