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
struct tag {int dummy; } ;
struct TYPE_4__ {unsigned int nr; TYPE_1__* objects; } ;
struct rev_info {int ignore_missing_links; TYPE_2__ pending; int /*<<< orphan*/  repo; } ;
struct object_list {int dummy; } ;
struct object {scalar_t__ type; int flags; int /*<<< orphan*/  oid; } ;
struct bitmap_index {struct bitmap* haves; struct bitmap* result; } ;
struct bitmap {int dummy; } ;
struct TYPE_3__ {struct object* item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ OBJ_NONE ; 
 scalar_t__ OBJ_TAG ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap*,struct bitmap*) ; 
 struct bitmap* FUNC2 (struct bitmap_index*,struct rev_info*,struct object_list*,struct bitmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct bitmap_index*) ; 
 int /*<<< orphan*/ * FUNC4 (struct tag*) ; 
 int /*<<< orphan*/  FUNC5 (struct bitmap_index*,struct object_list*) ; 
 scalar_t__ FUNC6 (struct bitmap_index*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct object*,struct object_list**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct bitmap_index*) ; 
 struct object* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct bitmap_index* FUNC12 (int,int) ; 

struct bitmap_index *FUNC13(struct rev_info *revs)
{
	unsigned int i;

	struct object_list *wants = NULL;
	struct object_list *haves = NULL;

	struct bitmap *wants_bitmap = NULL;
	struct bitmap *haves_bitmap = NULL;

	struct bitmap_index *bitmap_git = FUNC12(1, sizeof(*bitmap_git));
	/* try to open a bitmapped pack, but don't parse it yet
	 * because we may not need to use it */
	if (FUNC9(revs->repo, bitmap_git) < 0)
		goto cleanup;

	for (i = 0; i < revs->pending.nr; ++i) {
		struct object *object = revs->pending.objects[i].item;

		if (object->type == OBJ_NONE)
			FUNC10(&object->oid, NULL);

		while (object->type == OBJ_TAG) {
			struct tag *tag = (struct tag *) object;

			if (object->flags & UNINTERESTING)
				FUNC8(object, &haves);
			else
				FUNC8(object, &wants);

			object = FUNC10(FUNC4(tag), NULL);
		}

		if (object->flags & UNINTERESTING)
			FUNC8(object, &haves);
		else
			FUNC8(object, &wants);
	}

	/*
	 * if we have a HAVES list, but none of those haves is contained
	 * in the packfile that has a bitmap, we don't have anything to
	 * optimize here
	 */
	if (haves && !FUNC5(bitmap_git, haves))
		goto cleanup;

	/* if we don't want anything, we're done here */
	if (!wants)
		goto cleanup;

	/*
	 * now we're going to use bitmaps, so load the actual bitmap entries
	 * from disk. this is the point of no return; after this the rev_list
	 * becomes invalidated and we must perform the revwalk through bitmaps
	 */
	if (FUNC6(bitmap_git) < 0)
		goto cleanup;

	FUNC7(&revs->pending);

	if (haves) {
		revs->ignore_missing_links = 1;
		haves_bitmap = FUNC2(bitmap_git, revs, haves, NULL);
		FUNC11();
		revs->ignore_missing_links = 0;

		if (haves_bitmap == NULL)
			FUNC0("failed to perform bitmap walk");
	}

	wants_bitmap = FUNC2(bitmap_git, revs, wants, haves_bitmap);

	if (!wants_bitmap)
		FUNC0("failed to perform bitmap walk");

	if (haves_bitmap)
		FUNC1(wants_bitmap, haves_bitmap);

	bitmap_git->result = wants_bitmap;
	bitmap_git->haves = haves_bitmap;

	return bitmap_git;

cleanup:
	FUNC3(bitmap_git);
	return NULL;
}