#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct fsck_options {int dummy; } ;
struct commit_graft {int nr_parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; int /*<<< orphan*/  parents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCK_MSG_BAD_PARENT_SHA1 ; 
 int /*<<< orphan*/  FSCK_MSG_BAD_TREE ; 
 int /*<<< orphan*/  FSCK_MSG_BAD_TREE_SHA1 ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_AUTHOR ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_COMMITTER ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_GRAFT ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_PARENT ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_TREE ; 
 int /*<<< orphan*/  FSCK_MSG_MULTIPLE_AUTHORS ; 
 int /*<<< orphan*/  FSCK_MSG_NUL_IN_COMMIT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const**,TYPE_1__*,struct fsck_options*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*) ; 
 struct commit_graft* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,char,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id*) ; 
 scalar_t__ FUNC6 (char const*,struct object_id*,char const**) ; 
 int FUNC7 (struct fsck_options*,TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  the_repository ; 
 scalar_t__ FUNC9 (char const*,unsigned long,TYPE_1__*,struct fsck_options*) ; 

__attribute__((used)) static int FUNC10(struct commit *commit, const char *buffer,
	unsigned long size, struct fsck_options *options)
{
	struct object_id tree_oid, oid;
	struct commit_graft *graft;
	unsigned parent_count, parent_line_count = 0, author_count;
	int err;
	const char *buffer_begin = buffer;
	const char *p;

	if (FUNC9(buffer, size, &commit->object, options))
		return -1;

	if (!FUNC8(buffer, "tree ", &buffer))
		return FUNC7(options, &commit->object, FSCK_MSG_MISSING_TREE, "invalid format - expected 'tree' line");
	if (FUNC6(buffer, &tree_oid, &p) || *p != '\n') {
		err = FUNC7(options, &commit->object, FSCK_MSG_BAD_TREE_SHA1, "invalid 'tree' line format - bad sha1");
		if (err)
			return err;
	}
	buffer = p + 1;
	while (FUNC8(buffer, "parent ", &buffer)) {
		if (FUNC6(buffer, &oid, &p) || *p != '\n') {
			err = FUNC7(options, &commit->object, FSCK_MSG_BAD_PARENT_SHA1, "invalid 'parent' line format - bad sha1");
			if (err)
				return err;
		}
		buffer = p + 1;
		parent_line_count++;
	}
	graft = FUNC3(the_repository, &commit->object.oid);
	parent_count = FUNC0(commit->parents);
	if (graft) {
		if (graft->nr_parent == -1 && !parent_count)
			; /* shallow commit */
		else if (graft->nr_parent != parent_count) {
			err = FUNC7(options, &commit->object, FSCK_MSG_MISSING_GRAFT, "graft objects missing");
			if (err)
				return err;
		}
	} else {
		if (parent_count != parent_line_count) {
			err = FUNC7(options, &commit->object, FSCK_MSG_MISSING_PARENT, "parent objects missing");
			if (err)
				return err;
		}
	}
	author_count = 0;
	while (FUNC8(buffer, "author ", &buffer)) {
		author_count++;
		err = FUNC1(&buffer, &commit->object, options);
		if (err)
			return err;
	}
	if (author_count < 1)
		err = FUNC7(options, &commit->object, FSCK_MSG_MISSING_AUTHOR, "invalid format - expected 'author' line");
	else if (author_count > 1)
		err = FUNC7(options, &commit->object, FSCK_MSG_MULTIPLE_AUTHORS, "invalid format - multiple 'author' lines");
	if (err)
		return err;
	if (!FUNC8(buffer, "committer ", &buffer))
		return FUNC7(options, &commit->object, FSCK_MSG_MISSING_COMMITTER, "invalid format - expected 'committer' line");
	err = FUNC1(&buffer, &commit->object, options);
	if (err)
		return err;
	if (!FUNC2(commit)) {
		err = FUNC7(options, &commit->object, FSCK_MSG_BAD_TREE, "could not load commit's tree %s", FUNC5(&tree_oid));
		if (err)
			return err;
	}
	if (FUNC4(buffer_begin, '\0', size)) {
		err = FUNC7(options, &commit->object, FSCK_MSG_NUL_IN_COMMIT,
			     "NUL byte in the commit object body");
		if (err)
			return err;
	}
	return 0;
}