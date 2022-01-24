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
struct set_gitdir_args {void* alternate_db; void* index_file; void* graft_file; void* object_dir; void* commondir; int /*<<< orphan*/ * member_0; } ;
struct argv_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALTERNATE_DB_ENVIRONMENT ; 
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  DB_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_COMMON_DIR_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_NAMESPACE_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_REPLACE_REF_BASE_ENVIRONMENT ; 
 int /*<<< orphan*/  GIT_SHALLOW_FILE_ENVIRONMENT ; 
 int /*<<< orphan*/  GRAFT_ENVIRONMENT ; 
 int /*<<< orphan*/  INDEX_ENVIRONMENT ; 
 int /*<<< orphan*/  NO_REPLACE_OBJECTS_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct argv_array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  git_namespace ; 
 int /*<<< orphan*/  git_replace_ref_base ; 
 scalar_t__ read_replace_refs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,struct set_gitdir_args*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

void FUNC8(const char *git_dir)
{
	const char *shallow_file;
	const char *replace_ref_base;
	struct set_gitdir_args args = { NULL };
	struct argv_array to_free = ARGV_ARRAY_INIT;

	args.commondir = FUNC4(&to_free, GIT_COMMON_DIR_ENVIRONMENT);
	args.object_dir = FUNC4(&to_free, DB_ENVIRONMENT);
	args.graft_file = FUNC4(&to_free, GRAFT_ENVIRONMENT);
	args.index_file = FUNC4(&to_free, INDEX_ENVIRONMENT);
	args.alternate_db = FUNC4(&to_free, ALTERNATE_DB_ENVIRONMENT);
	FUNC5(the_repository, git_dir, &args);
	FUNC0(&to_free);

	if (FUNC3(NO_REPLACE_OBJECTS_ENVIRONMENT))
		read_replace_refs = 0;
	replace_ref_base = FUNC3(GIT_REPLACE_REF_BASE_ENVIRONMENT);
	FUNC2(git_replace_ref_base);
	git_replace_ref_base = FUNC7(replace_ref_base ? replace_ref_base
							  : "refs/replace/");
	FUNC2(git_namespace);
	git_namespace = FUNC1(FUNC3(GIT_NAMESPACE_ENVIRONMENT));
	shallow_file = FUNC3(GIT_SHALLOW_FILE_ENVIRONMENT);
	if (shallow_file)
		FUNC6(the_repository, shallow_file, 0);
}