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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct merge_options {int /*<<< orphan*/  repo; } ;
struct hashmap {int dummy; } ;
struct dir_rename_entry {int /*<<< orphan*/  dir; int /*<<< orphan*/  non_unique_new_dir; } ;
struct TYPE_2__ {int nr; } ;
struct collision_entry {int reported_already; TYPE_1__ source_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (struct dir_rename_entry*,char const*) ; 
 struct collision_entry* FUNC3 (struct hashmap*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct merge_options*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct tree*,char*) ; 

__attribute__((used)) static char *FUNC9(struct merge_options *opt,
					 const char *path,
					 struct dir_rename_entry *entry,
					 struct hashmap *collisions,
					 struct tree *tree)
{
	char *new_path = NULL;
	struct collision_entry *collision_ent;
	int clean = 1;
	struct strbuf collision_paths = STRBUF_INIT;

	/*
	 * entry has the mapping of old directory name to new directory name
	 * that we want to apply to path.
	 */
	new_path = FUNC2(entry, path);

	if (!new_path) {
		/* This should only happen when entry->non_unique_new_dir set */
		if (!entry->non_unique_new_dir)
			FUNC0("entry->non_unqiue_dir not set and !new_path");
		FUNC5(opt, 1, FUNC1("CONFLICT (directory rename split): "
			       "Unclear where to place %s because directory "
			       "%s was renamed to multiple other directories, "
			       "with no destination getting a majority of the "
			       "files."),
		       path, entry->dir);
		clean = 0;
		return NULL;
	}

	/*
	 * The caller needs to have ensured that it has pre-populated
	 * collisions with all paths that map to new_path.  Do a quick check
	 * to ensure that's the case.
	 */
	collision_ent = FUNC3(collisions, new_path);
	if (collision_ent == NULL)
		FUNC0("collision_ent is NULL");

	/*
	 * Check for one-sided add/add/.../add conflicts, i.e.
	 * where implicit renames from the other side doing
	 * directory rename(s) can affect this side of history
	 * to put multiple paths into the same location.  Warn
	 * and bail on directory renames for such paths.
	 */
	if (collision_ent->reported_already) {
		clean = 0;
	} else if (FUNC8(opt->repo, tree, new_path)) {
		collision_ent->reported_already = 1;
		FUNC6(&collision_paths, ", ",
						 &collision_ent->source_files);
		FUNC5(opt, 1, FUNC1("CONFLICT (implicit dir rename): Existing "
			       "file/dir at %s in the way of implicit "
			       "directory rename(s) putting the following "
			       "path(s) there: %s."),
		       new_path, collision_paths.buf);
		clean = 0;
	} else if (collision_ent->source_files.nr > 1) {
		collision_ent->reported_already = 1;
		FUNC6(&collision_paths, ", ",
						 &collision_ent->source_files);
		FUNC5(opt, 1, FUNC1("CONFLICT (implicit dir rename): Cannot map "
			       "more than one path to %s; implicit directory "
			       "renames tried to put these paths there: %s"),
		       new_path, collision_paths.buf);
		clean = 0;
	}

	/* Free memory we no longer need */
	FUNC7(&collision_paths);
	if (!clean && new_path) {
		FUNC4(new_path);
		return NULL;
	}

	return new_path;
}