#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dentry {int dummy; } ;
struct debug_view {int dummy; } ;
struct TYPE_5__ {int pages_per_area; int nr_areas; int level; int buf_size; int entry_size; struct TYPE_5__* active_entries; struct TYPE_5__* active_pages; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  debugfs_entries; int /*<<< orphan*/  views; int /*<<< orphan*/  name; scalar_t__ active_area; int /*<<< orphan*/  lock; int /*<<< orphan*/ * areas; } ;
typedef  TYPE_1__ debug_info_t ;
typedef  int /*<<< orphan*/  debug_entry_t ;

/* Variables and functions */
 int ALL_AREAS ; 
 int DEBUG_MAX_VIEWS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 void* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static debug_info_t *FUNC8(const char *name, int pages_per_area,
				      int nr_areas, int buf_size, int level,
				      int mode)
{
	debug_info_t *rc;

	/* alloc everything */
	rc = FUNC3(sizeof(debug_info_t), GFP_KERNEL);
	if (!rc)
		goto fail_malloc_rc;
	rc->active_entries = FUNC1(nr_areas, sizeof(int), GFP_KERNEL);
	if (!rc->active_entries)
		goto fail_malloc_active_entries;
	rc->active_pages = FUNC1(nr_areas, sizeof(int), GFP_KERNEL);
	if (!rc->active_pages)
		goto fail_malloc_active_pages;
	if ((mode == ALL_AREAS) && (pages_per_area != 0)) {
		rc->areas = FUNC0(pages_per_area, nr_areas);
		if (!rc->areas)
			goto fail_malloc_areas;
	} else {
		rc->areas = NULL;
	}

	/* initialize members */
	FUNC6(&rc->lock);
	rc->pages_per_area = pages_per_area;
	rc->nr_areas	   = nr_areas;
	rc->active_area    = 0;
	rc->level	   = level;
	rc->buf_size	   = buf_size;
	rc->entry_size	   = sizeof(debug_entry_t) + buf_size;
	FUNC7(rc->name, name, sizeof(rc->name));
	FUNC4(rc->views, 0, DEBUG_MAX_VIEWS * sizeof(struct debug_view *));
	FUNC4(rc->debugfs_entries, 0, DEBUG_MAX_VIEWS * sizeof(struct dentry *));
	FUNC5(&(rc->ref_count), 0);

	return rc;

fail_malloc_areas:
	FUNC2(rc->active_pages);
fail_malloc_active_pages:
	FUNC2(rc->active_entries);
fail_malloc_active_entries:
	FUNC2(rc);
fail_malloc_rc:
	return NULL;
}