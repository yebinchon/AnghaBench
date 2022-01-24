#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int item_path_offset; int /*<<< orphan*/  free_item_payload; int /*<<< orphan*/  (* free_item ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  map; int /*<<< orphan*/  items; } ;
typedef  TYPE_1__ git_sortedcache ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(git_sortedcache *sc, size_t pos)
{
	char *item;

	/*
	 * Because of pool allocation, this can't actually remove the item,
	 * but we can remove it from the items vector and the hash table.
	 */

	if ((item = FUNC2(&sc->items, pos)) == NULL) {
		FUNC0(GIT_ERROR_INVALID, "removing item out of range");
		return GIT_ENOTFOUND;
	}

	(void)FUNC3(&sc->items, pos);

	FUNC1(sc->map, item + sc->item_path_offset);

	if (sc->free_item)
		sc->free_item(sc->free_item_payload, item);

	return 0;
}