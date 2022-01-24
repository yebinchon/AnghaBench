#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct agp_bridge_data {int /*<<< orphan*/ * key_list; TYPE_2__* driver; struct page* scratch_page_page; int /*<<< orphan*/  mapped_lock; int /*<<< orphan*/  mapped_list; TYPE_1__* dev; int /*<<< orphan*/  scratch_page_dma; int /*<<< orphan*/  scratch_page; int /*<<< orphan*/ * version; int /*<<< orphan*/  max_memory_agp; } ;
struct TYPE_4__ {int (* fetch_size ) () ;int /*<<< orphan*/  (* free_gatt_table ) (struct agp_bridge_data*) ;int /*<<< orphan*/  (* agp_destroy_page ) (struct page*,int /*<<< orphan*/ ) ;scalar_t__ needs_scratch_page; scalar_t__ (* configure ) () ;scalar_t__ (* create_gatt_table ) (struct agp_bridge_data*) ;int /*<<< orphan*/  (* mask_memory ) (struct agp_bridge_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct page* (* agp_alloc_page ) (struct agp_bridge_data*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_PAGE_DESTROY_FREE ; 
 int /*<<< orphan*/  AGP_PAGE_DESTROY_UNMAP ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  agp_current_version ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct page* FUNC5 (struct agp_bridge_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct agp_bridge_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (struct agp_bridge_data*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct agp_bridge_data*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct agp_bridge_data *bridge)
{
	int size_value, rc, got_gatt=0, got_keylist=0;

	bridge->max_memory_agp = FUNC1();
	bridge->version = &agp_current_version;

	if (bridge->driver->needs_scratch_page) {
		struct page *page = bridge->driver->agp_alloc_page(bridge);

		if (!page) {
			FUNC2(&bridge->dev->dev,
				"can't get memory for scratch page\n");
			return -ENOMEM;
		}

		bridge->scratch_page_page = page;
		bridge->scratch_page_dma = FUNC3(page);

		bridge->scratch_page = bridge->driver->mask_memory(bridge,
						   bridge->scratch_page_dma, 0);
	}

	size_value = bridge->driver->fetch_size();
	if (size_value == 0) {
		FUNC2(&bridge->dev->dev, "can't determine aperture size\n");
		rc = -EINVAL;
		goto err_out;
	}
	if (bridge->driver->create_gatt_table(bridge)) {
		FUNC2(&bridge->dev->dev,
			"can't get memory for graphics translation table\n");
		rc = -ENOMEM;
		goto err_out;
	}
	got_gatt = 1;

	bridge->key_list = FUNC14(PAGE_SIZE * 4);
	if (bridge->key_list == NULL) {
		FUNC2(&bridge->dev->dev,
			"can't allocate memory for key lists\n");
		rc = -ENOMEM;
		goto err_out;
	}
	got_keylist = 1;

	/* FIXME vmalloc'd memory not guaranteed contiguous */

	if (bridge->driver->configure()) {
		FUNC2(&bridge->dev->dev, "error configuring host chipset\n");
		rc = -EINVAL;
		goto err_out;
	}
	FUNC0(&bridge->mapped_list);
	FUNC4(&bridge->mapped_lock);

	return 0;

err_out:
	if (bridge->driver->needs_scratch_page) {
		struct page *page = bridge->scratch_page_page;

		bridge->driver->agp_destroy_page(page, AGP_PAGE_DESTROY_UNMAP);
		bridge->driver->agp_destroy_page(page, AGP_PAGE_DESTROY_FREE);
	}
	if (got_gatt)
		bridge->driver->free_gatt_table(bridge);
	if (got_keylist) {
		FUNC13(bridge->key_list);
		bridge->key_list = NULL;
	}
	return rc;
}