#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct agp_bridge_data {scalar_t__ gatt_bus_addr; int /*<<< orphan*/ * gatt_table_real; int /*<<< orphan*/ * gatt_table; TYPE_1__* driver; void* current_size; } ;
struct TYPE_10__ {int page_order; } ;
struct TYPE_9__ {int page_order; } ;
struct TYPE_8__ {int page_order; } ;
struct TYPE_7__ {int page_order; } ;
struct TYPE_6__ {int size_type; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (void*) ; 
 TYPE_4__* FUNC1 (void*) ; 
 TYPE_3__* FUNC2 (void*) ; 
 TYPE_2__* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int EINVAL ; 
#define  FIXED_APER_SIZE 132 
#define  LVL2_APER_SIZE 131 
 int PAGE_SIZE ; 
#define  U16_APER_SIZE 130 
#define  U32_APER_SIZE 129 
#define  U8_APER_SIZE 128 
 int /*<<< orphan*/ * agp_gatt_table ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int) ; 
 struct page* FUNC8 (char*) ; 

int FUNC9(struct agp_bridge_data *bridge)
{
	int page_order;
	char *table, *table_end;
	void *temp;
	struct page *page;

	temp = bridge->current_size;

	switch (bridge->driver->size_type) {
	case U8_APER_SIZE:
		page_order = FUNC2(temp)->page_order;
		break;
	case U16_APER_SIZE:
		page_order = FUNC0(temp)->page_order;
		break;
	case U32_APER_SIZE:
		page_order = FUNC1(temp)->page_order;
		break;
	case FIXED_APER_SIZE:
		page_order = FUNC3(temp)->page_order;
		break;
	case LVL2_APER_SIZE:
		/* The generic routines can't deal with 2 level gatt's */
		return -EINVAL;
	default:
		page_order = 0;
		break;
	}

	/* Do not worry about freeing memory, because if this is
	 * called, then all agp memory is deallocated and removed
	 * from the table. */

#ifdef CONFIG_X86
	set_memory_wb((unsigned long)bridge->gatt_table, 1 << page_order);
#else
	FUNC6(bridge->gatt_table);
#endif
	table = (char *) bridge->gatt_table_real;
	table_end = table + ((PAGE_SIZE * (1 << page_order)) - 1);

	for (page = FUNC8(table); page <= FUNC8(table_end); page++)
		FUNC4(page);

	FUNC5(bridge->gatt_table_real, page_order);

	agp_gatt_table = NULL;
	bridge->gatt_table = NULL;
	bridge->gatt_table_real = NULL;
	bridge->gatt_bus_addr = 0;

	return 0;
}