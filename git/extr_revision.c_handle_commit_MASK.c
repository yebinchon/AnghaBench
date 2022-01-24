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
struct tree {int dummy; } ;
struct tag {TYPE_1__* tagged; int /*<<< orphan*/  tag; } ;
struct rev_info {int limited; int /*<<< orphan*/  blob_objects; int /*<<< orphan*/  repo; int /*<<< orphan*/  tree_objects; scalar_t__ sources; int /*<<< orphan*/  topo_order; scalar_t__ exclude_promisor_objects; scalar_t__ ignore_missing_links; scalar_t__ tag_objects; } ;
struct object_array_entry {char* name; char* path; unsigned int mode; struct object* item; } ;
struct object {unsigned long flags; scalar_t__ type; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 scalar_t__ OBJ_BLOB ; 
 scalar_t__ OBJ_COMMIT ; 
 scalar_t__ OBJ_TAG ; 
 scalar_t__ OBJ_TREE ; 
 unsigned long UNINTERESTING ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rev_info*,struct object*,char const*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tag*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct commit*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct tree*) ; 
 char const* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct commit*) ; 
 struct object* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** FUNC11 (scalar_t__,struct commit*) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC12 (char const*) ; 

__attribute__((used)) static struct commit *FUNC13(struct rev_info *revs,
				    struct object_array_entry *entry)
{
	struct object *object = entry->item;
	const char *name = entry->name;
	const char *path = entry->path;
	unsigned int mode = entry->mode;
	unsigned long flags = object->flags;

	/*
	 * Tag object? Look what it points to..
	 */
	while (object->type == OBJ_TAG) {
		struct tag *tag = (struct tag *) object;
		if (revs->tag_objects && !(flags & UNINTERESTING))
			FUNC0(revs, object, tag->tag);
		object = FUNC10(revs->repo, FUNC4(tag));
		if (!object) {
			if (revs->ignore_missing_links || (flags & UNINTERESTING))
				return NULL;
			if (revs->exclude_promisor_objects &&
			    FUNC5(&tag->tagged->oid))
				return NULL;
			FUNC2("bad object %s", FUNC8(&tag->tagged->oid));
		}
		object->flags |= flags;
		/*
		 * We'll handle the tagged object by looping or dropping
		 * through to the non-tag handlers below. Do not
		 * propagate path data from the tag's pending entry.
		 */
		path = NULL;
		mode = 0;
	}

	/*
	 * Commit object? Just return it, we'll do all the complex
	 * reachability crud.
	 */
	if (object->type == OBJ_COMMIT) {
		struct commit *commit = (struct commit *)object;

		if (FUNC9(commit) < 0)
			FUNC2("unable to parse commit %s", name);
		if (flags & UNINTERESTING) {
			FUNC6(commit);

			if (!revs->topo_order || !FUNC3(the_repository))
				revs->limited = 1;
		}
		if (revs->sources) {
			char **slot = FUNC11(revs->sources, commit);

			if (!*slot)
				*slot = FUNC12(name);
		}
		return commit;
	}

	/*
	 * Tree object? Either mark it uninteresting, or add it
	 * to the list of objects to look at later..
	 */
	if (object->type == OBJ_TREE) {
		struct tree *tree = (struct tree *)object;
		if (!revs->tree_objects)
			return NULL;
		if (flags & UNINTERESTING) {
			FUNC7(revs->repo, tree);
			return NULL;
		}
		FUNC1(revs, object, name, mode, path);
		return NULL;
	}

	/*
	 * Blob object? You know the drill by now..
	 */
	if (object->type == OBJ_BLOB) {
		if (!revs->blob_objects)
			return NULL;
		if (flags & UNINTERESTING)
			return NULL;
		FUNC1(revs, object, name, mode, path);
		return NULL;
	}
	FUNC2("%s is unknown object", name);
}