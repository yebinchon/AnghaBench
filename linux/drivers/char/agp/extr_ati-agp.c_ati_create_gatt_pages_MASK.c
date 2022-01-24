#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ati_page_map {int dummy; } ;
struct TYPE_2__ {int num_tables; struct ati_page_map** gatt_pages; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ati_page_map*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ ati_generic_private ; 
 struct ati_page_map** FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 struct ati_page_map* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int nr_tables)
{
	struct ati_page_map **tables;
	struct ati_page_map *entry;
	int retval = 0;
	int i;

	tables = FUNC2(nr_tables + 1, sizeof(struct ati_page_map *),
			 GFP_KERNEL);
	if (tables == NULL)
		return -ENOMEM;

	for (i = 0; i < nr_tables; i++) {
		entry = FUNC3(sizeof(struct ati_page_map), GFP_KERNEL);
		tables[i] = entry;
		if (entry == NULL) {
			retval = -ENOMEM;
			break;
		}
		retval = FUNC0(entry);
		if (retval != 0)
			break;
	}
	ati_generic_private.num_tables = i;
	ati_generic_private.gatt_pages = tables;

	if (retval != 0)
		FUNC1();

	return retval;
}