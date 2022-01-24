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
struct tree {int /*<<< orphan*/  object; int /*<<< orphan*/  size; int /*<<< orphan*/  buffer; } ;
struct object {int dummy; } ;
struct name_entry {char* path; int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; } ;
struct fsck_options {int (* walk ) (struct object*,int /*<<< orphan*/ ,void*,struct fsck_options*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_BLOB ; 
 int /*<<< orphan*/  OBJ_TREE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fsck_options*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct fsck_options*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct tree_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct tree*) ; 
 int /*<<< orphan*/  FUNC11 (struct fsck_options*,struct object*,char*,char const*,char*) ; 
 int FUNC12 (struct object*,int /*<<< orphan*/ ,void*,struct fsck_options*) ; 
 int FUNC13 (struct object*,int /*<<< orphan*/ ,void*,struct fsck_options*) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC14 (struct tree_desc*,struct name_entry*) ; 

__attribute__((used)) static int FUNC15(struct tree *tree, void *data, struct fsck_options *options)
{
	struct tree_desc desc;
	struct name_entry entry;
	int res = 0;
	const char *name;

	if (FUNC10(tree))
		return -1;

	name = FUNC6(options, &tree->object);
	if (FUNC7(&desc, tree->buffer, tree->size))
		return -1;
	while (FUNC14(&desc, &entry)) {
		struct object *obj;
		int result;

		if (FUNC1(entry.mode))
			continue;

		if (FUNC0(entry.mode)) {
			obj = (struct object *)FUNC9(the_repository, &entry.oid);
			if (name && obj)
				FUNC11(options, obj, "%s%s/", name,
					entry.path);
			result = options->walk(obj, OBJ_TREE, data, options);
		}
		else if (FUNC3(entry.mode) || FUNC2(entry.mode)) {
			obj = (struct object *)FUNC8(the_repository, &entry.oid);
			if (name && obj)
				FUNC11(options, obj, "%s%s", name,
					entry.path);
			result = options->walk(obj, OBJ_BLOB, data, options);
		}
		else {
			result = FUNC5("in tree %s: entry %s has bad mode %.6o",
					FUNC4(options, &tree->object), entry.path, entry.mode);
		}
		if (result < 0)
			return result;
		if (!res)
			res = result;
	}
	return res;
}