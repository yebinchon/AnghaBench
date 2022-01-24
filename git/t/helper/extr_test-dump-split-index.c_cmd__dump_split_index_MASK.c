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
struct split_index {scalar_t__ delete_bitmap; scalar_t__ replace_bitmap; int /*<<< orphan*/  base_oid; } ;
struct cache_entry {int ce_mode; char* name; int /*<<< orphan*/  oid; } ;
struct TYPE_3__ {int cache_nr; struct cache_entry** cache; struct split_index* split_index; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int FUNC0 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  show_bit ; 
 TYPE_1__ the_index ; 

int FUNC5(int ac, const char **av)
{
	struct split_index *si;
	int i;

	FUNC1(&the_index, av[1], 1);
	FUNC4("own %s\n", FUNC3(&the_index.oid));
	si = the_index.split_index;
	if (!si) {
		FUNC4("not a split index\n");
		return 0;
	}
	FUNC4("base %s\n", FUNC3(&si->base_oid));
	for (i = 0; i < the_index.cache_nr; i++) {
		struct cache_entry *ce = the_index.cache[i];
		FUNC4("%06o %s %d\t%s\n", ce->ce_mode,
		       FUNC3(&ce->oid), FUNC0(ce), ce->name);
	}
	FUNC4("replacements:");
	if (si->replace_bitmap)
		FUNC2(si->replace_bitmap, show_bit, NULL);
	FUNC4("\ndeletions:");
	if (si->delete_bitmap)
		FUNC2(si->delete_bitmap, show_bit, NULL);
	FUNC4("\n");
	return 0;
}