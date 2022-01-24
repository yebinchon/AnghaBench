#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_24__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_18__ ;
typedef  struct TYPE_26__   TYPE_16__ ;

/* Type definitions */
struct TYPE_29__ {size_t length; TYPE_2__** contents; } ;
struct TYPE_28__ {size_t next_idx; TYPE_24__ entries; } ;
typedef  TYPE_1__ tree_iterator_frame ;
struct TYPE_30__ {int /*<<< orphan*/  tree_entry; } ;
typedef  TYPE_2__ tree_iterator_entry ;
struct TYPE_26__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_27__ {int /*<<< orphan*/  flags; } ;
struct TYPE_31__ {int /*<<< orphan*/  entry; TYPE_16__ entry_path; TYPE_18__ base; } ;
typedef  TYPE_3__ tree_iterator ;
typedef  int /*<<< orphan*/  git_iterator ;
typedef  int /*<<< orphan*/  git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ITERATOR_FIRST_ACCESS ; 
 int GIT_ITEROVER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_24__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_24__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_18__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_18__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_18__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_16__*,TYPE_2__*) ; 
 TYPE_2__* FUNC10 (TYPE_1__*) ; 
 TYPE_1__* FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int FUNC14 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC16(const git_index_entry **out, git_iterator *i)
{
	tree_iterator *iter = (tree_iterator *)i;
	int error = 0;

	iter->base.flags |= GIT_ITERATOR_FIRST_ACCESS;

	/* examine tree entries until we find the next one to return */
	while (true) {
		tree_iterator_entry *prev_entry, *entry;
		tree_iterator_frame *frame;
		bool is_tree;

		if ((frame = FUNC11(iter)) == NULL) {
			error = GIT_ITEROVER;
			break;
		}

		/* no more entries in this frame.  pop the frame out */
		if (frame->next_idx == frame->entries.length) {
			FUNC13(iter);
			continue;
		}

		/* we may have coalesced the contents of case-insensitively same-named
		 * directories, so do the sort now.
		 */
		if (frame->next_idx == 0 && !FUNC1(&frame->entries))
			FUNC2(&frame->entries);

		/* we have more entries in the current frame, that's our next entry */
		prev_entry = FUNC10(frame);
		entry = frame->entries.contents[frame->next_idx];
		frame->next_idx++;

		/* we can have collisions when iterating case insensitively.  (eg,
		 * 'A/a' and 'a/A').  squash this one if it's already been seen.
		 */
		if (FUNC4(&iter->base) &&
			prev_entry &&
			FUNC12(prev_entry, entry) == 0)
			continue;

		if ((error = FUNC9(&iter->entry_path, entry)) < 0)
			break;

		/* if this path is before our start, advance over this entry */
		if (!FUNC7(&iter->base, iter->entry_path.ptr, false))
			continue;

		/* if this path is after our end, stop */
		if (FUNC6(&iter->base, iter->entry_path.ptr)) {
			error = GIT_ITEROVER;
			break;
		}

		/* if we have a list of paths we're interested in, examine it */
		if (!FUNC8(&iter->base, iter->entry_path.ptr))
			continue;

		is_tree = FUNC0(entry->tree_entry);

		/* if we are *not* including trees then advance over this entry */
		if (is_tree && !FUNC5(iter)) {

			/* if we've found a tree (and are not returning it to the caller)
			 * and we are autoexpanding, then we want to return the first
			 * child.  push the new directory and advance.
			 */
			if (FUNC3(iter)) {
				if ((error = FUNC14(iter, entry)) < 0)
					break;
			}

			continue;
		}

		FUNC15(iter, frame, entry);

		/* if we are autoexpanding, then push this as a new frame, so that
		 * the next call to `advance` will dive into this directory.
		 */
		if (is_tree && FUNC3(iter))
			error = FUNC14(iter, entry);

		break;
	}

	if (out)
		*out = (error == 0) ? &iter->entry : NULL;

	return error;
}