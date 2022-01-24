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
struct TYPE_4__ {int flags; char* template_path; int mode; } ;
typedef  TYPE_1__ git_repository_init_options ;

/* Variables and functions */
 int GIT_FILEMODE_BLOB ; 
 int GIT_FILEMODE_TREE ; 
 int GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE ; 
 int GIT_REPOSITORY_INIT_MKPATH ; 
 TYPE_1__ GIT_REPOSITORY_INIT_OPTIONS_INIT ; 
 int GIT_REPOSITORY_INIT_SHARED_GROUP ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

void FUNC6(void)
{
	git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;
	const char *repo_path;
	int filemode;

	opts.flags = GIT_REPOSITORY_INIT_MKPATH |
		GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE;
	opts.template_path = "template";
	opts.mode = GIT_REPOSITORY_INIT_SHARED_GROUP;

	FUNC4("template", false);
	FUNC3("init_shared_from_tpl", &opts);

	filemode = FUNC1(_repo, "core.filemode");

	repo_path = FUNC2(_repo);
	FUNC0(repo_path, "hooks",
		GIT_FILEMODE_TREE | GIT_REPOSITORY_INIT_SHARED_GROUP, true, filemode);
	FUNC0(repo_path, "info",
		GIT_FILEMODE_TREE | GIT_REPOSITORY_INIT_SHARED_GROUP, true, filemode);
	FUNC0(repo_path, "description",
		GIT_FILEMODE_BLOB, false, filemode);

	FUNC5(_repo, "template");
}