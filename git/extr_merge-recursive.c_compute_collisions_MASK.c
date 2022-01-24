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
struct hashmap {int dummy; } ;
struct dir_rename_entry {int dummy; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_filepair {char status; TYPE_1__* two; } ;
struct collision_entry {char* target_file; int /*<<< orphan*/  source_files; int /*<<< orphan*/  ent; } ;
struct TYPE_2__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 char* FUNC0 (struct dir_rename_entry*,int /*<<< orphan*/ ) ; 
 struct dir_rename_entry* FUNC1 (int /*<<< orphan*/ ,struct hashmap*) ; 
 struct collision_entry* FUNC2 (struct hashmap*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hashmap*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hashmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct collision_entry* FUNC9 (int,int) ; 

__attribute__((used)) static void FUNC10(struct hashmap *collisions,
			       struct hashmap *dir_renames,
			       struct diff_queue_struct *pairs)
{
	int i;

	/*
	 * Multiple files can be mapped to the same path due to directory
	 * renames done by the other side of history.  Since that other
	 * side of history could have merged multiple directories into one,
	 * if our side of history added the same file basename to each of
	 * those directories, then all N of them would get implicitly
	 * renamed by the directory rename detection into the same path,
	 * and we'd get an add/add/.../add conflict, and all those adds
	 * from *this* side of history.  This is not representable in the
	 * index, and users aren't going to easily be able to make sense of
	 * it.  So we need to provide a good warning about what's
	 * happening, and fall back to no-directory-rename detection
	 * behavior for those paths.
	 *
	 * See testcases 9e and all of section 5 from t6043 for examples.
	 */
	FUNC3(collisions);

	for (i = 0; i < pairs->nr; ++i) {
		struct dir_rename_entry *dir_rename_ent;
		struct collision_entry *collision_ent;
		char *new_path;
		struct diff_filepair *pair = pairs->queue[i];

		if (pair->status != 'A' && pair->status != 'R')
			continue;
		dir_rename_ent = FUNC1(pair->two->path,
						   dir_renames);
		if (!dir_rename_ent)
			continue;

		new_path = FUNC0(dir_rename_ent, pair->two->path);
		if (!new_path)
			/*
			 * dir_rename_ent->non_unique_new_path is true, which
			 * means there is no directory rename for us to use,
			 * which means it won't cause us any additional
			 * collisions.
			 */
			continue;
		collision_ent = FUNC2(collisions, new_path);
		if (!collision_ent) {
			collision_ent = FUNC9(1,
						sizeof(struct collision_entry));
			FUNC5(&collision_ent->ent,
						FUNC7(new_path));
			FUNC6(collisions, &collision_ent->ent);
			collision_ent->target_file = new_path;
		} else {
			FUNC4(new_path);
		}
		FUNC8(&collision_ent->source_files,
				   pair->two->path);
	}
}