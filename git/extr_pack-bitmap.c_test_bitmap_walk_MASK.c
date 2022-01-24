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
struct stored_bitmap {int dummy; } ;
struct TYPE_4__ {int nr; TYPE_1__* objects; } ;
struct rev_info {int tag_objects; int tree_objects; int blob_objects; TYPE_2__ pending; int /*<<< orphan*/  repo; } ;
struct object {int /*<<< orphan*/  oid; } ;
struct ewah_bitmap {scalar_t__ bit_size; } ;
struct bitmap_test_data {int /*<<< orphan*/  base; int /*<<< orphan*/  prg; scalar_t__ seen; struct bitmap_index* bitmap_git; } ;
struct bitmap_index {int version; int entry_count; int /*<<< orphan*/  bitmaps; } ;
struct bitmap {int dummy; } ;
typedef  scalar_t__ khiter_t ;
struct TYPE_3__ {struct object* item; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bitmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t FUNC2 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (struct ewah_bitmap*) ; 
 struct bitmap* FUNC5 (struct ewah_bitmap*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct bitmap_index*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct stored_bitmap* FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ewah_bitmap* FUNC11 (struct stored_bitmap*) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 struct bitmap_index* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC15 (char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_show_commit ; 
 int /*<<< orphan*/  test_show_object ; 
 int /*<<< orphan*/  FUNC17 (struct rev_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bitmap_test_data*) ; 

void FUNC18(struct rev_info *revs)
{
	struct object *root;
	struct bitmap *result = NULL;
	khiter_t pos;
	size_t result_popcnt;
	struct bitmap_test_data tdata;
	struct bitmap_index *bitmap_git;

	if (!(bitmap_git = FUNC13(revs->repo)))
		FUNC3("failed to load bitmap indexes");

	if (revs->pending.nr != 1)
		FUNC3("you must specify exactly one commit to test");

	FUNC6(stderr, "Bitmap v%d test (%d entries loaded)\n",
		bitmap_git->version, bitmap_git->entry_count);

	root = revs->pending.objects[0].item;
	pos = FUNC9(bitmap_git->bitmaps, root->oid);

	if (pos < FUNC8(bitmap_git->bitmaps)) {
		struct stored_bitmap *st = FUNC10(bitmap_git->bitmaps, pos);
		struct ewah_bitmap *bm = FUNC11(st);

		FUNC6(stderr, "Found bitmap for %s. %d bits / %08x checksum\n",
			FUNC12(&root->oid), (int)bm->bit_size, FUNC4(bm));

		result = FUNC5(bm);
	}

	if (result == NULL)
		FUNC3("Commit %s doesn't have an indexed bitmap", FUNC12(&root->oid));

	revs->tag_objects = 1;
	revs->tree_objects = 1;
	revs->blob_objects = 1;

	result_popcnt = FUNC2(result);

	if (FUNC14(revs))
		FUNC3("revision walk setup failed");

	tdata.bitmap_git = bitmap_git;
	tdata.base = FUNC1();
	tdata.prg = FUNC15("Verifying bitmap entries", result_popcnt);
	tdata.seen = 0;

	FUNC17(revs, &test_show_commit, &test_show_object, &tdata);

	FUNC16(&tdata.prg);

	if (FUNC0(result, tdata.base))
		FUNC6(stderr, "OK!\n");
	else
		FUNC6(stderr, "Mismatch!\n");

	FUNC7(bitmap_git);
}