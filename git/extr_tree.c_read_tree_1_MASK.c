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
struct tree_desc {int dummy; } ;
struct tree {int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct repository {int /*<<< orphan*/  index; } ;
struct pathspec {int dummy; } ;
struct object_id {int dummy; } ;
struct name_entry {int /*<<< orphan*/  path; int /*<<< orphan*/  oid; int /*<<< orphan*/  mode; } ;
struct commit {int dummy; } ;
typedef  int (* read_tree_fn_t ) (int /*<<< orphan*/ *,struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ;
typedef  enum interesting { ____Placeholder_interesting } interesting ;

/* Variables and functions */
#define  READ_TREE_RECURSIVE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int all_entries_interesting ; 
 int all_entries_not_interesting ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int entry_not_interesting ; 
 int /*<<< orphan*/ * FUNC3 (struct commit*) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct commit* FUNC5 (struct repository*,int /*<<< orphan*/ *) ; 
 struct tree* FUNC6 (struct repository*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct object_id*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct commit*) ; 
 scalar_t__ FUNC10 (struct tree*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,int) ; 
 scalar_t__ FUNC14 (struct tree_desc*,struct name_entry*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct name_entry*,struct strbuf*,int /*<<< orphan*/ ,struct pathspec const*) ; 
 int FUNC16 (struct name_entry*) ; 

__attribute__((used)) static int FUNC17(struct repository *r,
		       struct tree *tree, struct strbuf *base,
		       int stage, const struct pathspec *pathspec,
		       read_tree_fn_t fn, void *context)
{
	struct tree_desc desc;
	struct name_entry entry;
	struct object_id oid;
	int len, oldlen = base->len;
	enum interesting retval = entry_not_interesting;

	if (FUNC10(tree))
		return -1;

	FUNC4(&desc, tree->buffer, tree->size);

	while (FUNC14(&desc, &entry)) {
		if (retval != all_entries_interesting) {
			retval = FUNC15(r->index, &entry,
							base, 0, pathspec);
			if (retval == all_entries_not_interesting)
				break;
			if (retval == entry_not_interesting)
				continue;
		}

		switch (fn(&entry.oid, base,
			   entry.path, entry.mode, stage, context)) {
		case 0:
			continue;
		case READ_TREE_RECURSIVE:
			break;
		default:
			return -1;
		}

		if (FUNC0(entry.mode))
			FUNC8(&oid, &entry.oid);
		else if (FUNC1(entry.mode)) {
			struct commit *commit;

			commit = FUNC5(r, &entry.oid);
			if (!commit)
				FUNC2("Commit %s in submodule path %s%s not found",
				    FUNC7(&entry.oid),
				    base->buf, entry.path);

			if (FUNC9(commit))
				FUNC2("Invalid commit %s in submodule path %s%s",
				    FUNC7(&entry.oid),
				    base->buf, entry.path);

			FUNC8(&oid, FUNC3(commit));
		}
		else
			continue;

		len = FUNC16(&entry);
		FUNC11(base, entry.path, len);
		FUNC12(base, '/');
		retval = FUNC17(r, FUNC6(r, &oid),
				     base, stage, pathspec,
				     fn, context);
		FUNC13(base, oldlen);
		if (retval)
			return -1;
	}
	return 0;
}