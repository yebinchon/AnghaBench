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
struct strbuf {char* buf; int len; } ;
struct stat {int dummy; } ;
struct object_id {int dummy; } ;
struct notes_tree {int dummy; } ;
struct notes_merge_options {int verbosity; TYPE_1__* repo; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
struct commit {int /*<<< orphan*/  parents; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_WRITE_OBJECT ; 
 int /*<<< orphan*/  NOTES_MERGE_WORKTREE ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct notes_tree*,struct object_id*,struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct notes_tree*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (struct commit*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct object_id*,char*,struct stat*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (struct object_id*) ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 struct dirent* FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 
 char* FUNC20 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct commit*,char const*) ; 

int FUNC22(struct notes_merge_options *o,
		       struct notes_tree *partial_tree,
		       struct commit *partial_commit,
		       struct object_id *result_oid)
{
	/*
	 * Iterate through files in .git/NOTES_MERGE_WORKTREE and add all
	 * found notes to 'partial_tree'. Write the updated notes tree to
	 * the DB, and commit the resulting tree object while reusing the
	 * commit message and parents from 'partial_commit'.
	 * Finally store the new commit object OID into 'result_oid'.
	 */
	DIR *dir;
	struct dirent *e;
	struct strbuf path = STRBUF_INIT;
	const char *buffer = FUNC5(partial_commit, NULL);
	const char *msg = FUNC20(buffer, "\n\n");
	int baselen;

	FUNC7(&path, NOTES_MERGE_WORKTREE);
	if (o->verbosity >= 3)
		FUNC12("Committing notes in notes merge worktree at %s\n",
			path.buf);

	if (!msg || msg[2] == '\0')
		FUNC3("partial notes commit has empty message");
	msg += 2;

	dir = FUNC11(path.buf);
	if (!dir)
		FUNC4("could not open %s", path.buf);

	FUNC15(&path, '/');
	baselen = path.len;
	while ((e = FUNC13(dir)) != NULL) {
		struct stat st;
		struct object_id obj_oid, blob_oid;

		if (FUNC9(e->d_name))
			continue;

		if (FUNC6(e->d_name, &obj_oid)) {
			if (o->verbosity >= 3)
				FUNC12("Skipping non-SHA1 entry '%s%s'\n",
					path.buf, e->d_name);
			continue;
		}

		FUNC16(&path, e->d_name);
		/* write file as blob, and add to partial_tree */
		if (FUNC14(path.buf, &st))
			FUNC4("Failed to stat '%s'", path.buf);
		if (FUNC8(o->repo->index, &blob_oid, path.buf, &st, HASH_WRITE_OBJECT))
			FUNC3("Failed to write blob object from '%s'", path.buf);
		if (FUNC0(partial_tree, &obj_oid, &blob_oid, NULL))
			FUNC3("Failed to add resolved note '%s' to notes tree",
			    path.buf);
		if (o->verbosity >= 4)
			FUNC12("Added resolved note for object %s: %s\n",
				FUNC10(&obj_oid), FUNC10(&blob_oid));
		FUNC18(&path, baselen);
	}

	FUNC2(o->repo, partial_tree, partial_commit->parents, msg,
			    FUNC19(msg), result_oid);
	FUNC21(partial_commit, buffer);
	if (o->verbosity >= 4)
		FUNC12("Finalized notes merge commit: %s\n",
			FUNC10(result_oid));
	FUNC17(&path);
	FUNC1(dir);
	return 0;
}