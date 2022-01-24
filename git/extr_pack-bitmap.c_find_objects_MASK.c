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
struct stored_bitmap {int dummy; } ;
struct rev_info {struct include_data* include_check_data; int /*<<< orphan*/  include_check; } ;
struct object_list {struct object_list* next; struct object* item; } ;
struct object {scalar_t__ type; int /*<<< orphan*/  flags; int /*<<< orphan*/  oid; } ;
struct include_data {struct bitmap* seen; struct bitmap* base; struct bitmap_index* bitmap_git; } ;
struct ewah_bitmap {int dummy; } ;
struct bitmap_show_data {struct bitmap* base; struct bitmap_index* bitmap_git; } ;
struct bitmap_index {int /*<<< orphan*/  bitmaps; } ;
struct bitmap {int dummy; } ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 scalar_t__ OBJ_COMMIT ; 
 int /*<<< orphan*/  SEEN ; 
 int /*<<< orphan*/  UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct object*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap*,int) ; 
 struct bitmap* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct bitmap*,struct ewah_bitmap*) ; 
 int FUNC4 (struct bitmap_index*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct bitmap* FUNC6 (struct ewah_bitmap*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stored_bitmap* FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ewah_bitmap* FUNC10 (struct stored_bitmap*) ; 
 int /*<<< orphan*/  FUNC11 (struct object*,struct object_list**) ; 
 scalar_t__ FUNC12 (struct rev_info*) ; 
 int /*<<< orphan*/  should_include ; 
 int /*<<< orphan*/  show_commit ; 
 int /*<<< orphan*/  show_object ; 
 int /*<<< orphan*/  FUNC13 (struct rev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bitmap_show_data*) ; 

__attribute__((used)) static struct bitmap *FUNC14(struct bitmap_index *bitmap_git,
				   struct rev_info *revs,
				   struct object_list *roots,
				   struct bitmap *seen)
{
	struct bitmap *base = NULL;
	int needs_walk = 0;

	struct object_list *not_mapped = NULL;

	/*
	 * Go through all the roots for the walk. The ones that have bitmaps
	 * on the bitmap index will be `or`ed together to form an initial
	 * global reachability analysis.
	 *
	 * The ones without bitmaps in the index will be stored in the
	 * `not_mapped_list` for further processing.
	 */
	while (roots) {
		struct object *object = roots->item;
		roots = roots->next;

		if (object->type == OBJ_COMMIT) {
			khiter_t pos = FUNC8(bitmap_git->bitmaps, object->oid);

			if (pos < FUNC7(bitmap_git->bitmaps)) {
				struct stored_bitmap *st = FUNC9(bitmap_git->bitmaps, pos);
				struct ewah_bitmap *or_with = FUNC10(st);

				if (base == NULL)
					base = FUNC6(or_with);
				else
					FUNC3(base, or_with);

				object->flags |= SEEN;
				continue;
			}
		}

		FUNC11(object, &not_mapped);
	}

	/*
	 * Best case scenario: We found bitmaps for all the roots,
	 * so the resulting `or` bitmap has the full reachability analysis
	 */
	if (not_mapped == NULL)
		return base;

	roots = not_mapped;

	/*
	 * Let's iterate through all the roots that don't have bitmaps to
	 * check if we can determine them to be reachable from the existing
	 * global bitmap.
	 *
	 * If we cannot find them in the existing global bitmap, we'll need
	 * to push them to an actual walk and run it until we can confirm
	 * they are reachable
	 */
	while (roots) {
		struct object *object = roots->item;
		int pos;

		roots = roots->next;
		pos = FUNC4(bitmap_git, &object->oid);

		if (pos < 0 || base == NULL || !FUNC1(base, pos)) {
			object->flags &= ~UNINTERESTING;
			FUNC0(revs, object, "");
			needs_walk = 1;
		} else {
			object->flags |= SEEN;
		}
	}

	if (needs_walk) {
		struct include_data incdata;
		struct bitmap_show_data show_data;

		if (base == NULL)
			base = FUNC2();

		incdata.bitmap_git = bitmap_git;
		incdata.base = base;
		incdata.seen = seen;

		revs->include_check = should_include;
		revs->include_check_data = &incdata;

		if (FUNC12(revs))
			FUNC5("revision walk setup failed");

		show_data.bitmap_git = bitmap_git;
		show_data.base = base;

		FUNC13(revs, show_commit, show_object,
				     &show_data);
	}

	return base;
}