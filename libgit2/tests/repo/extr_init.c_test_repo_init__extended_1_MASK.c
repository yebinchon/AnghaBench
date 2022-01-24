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
struct stat {int st_mode; } ;
struct TYPE_4__ {int flags; char* workdir_path; char* description; char* initial_head; char* origin_url; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ git_repository_init_options ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int GIT_REPOSITORY_INIT_MKPATH ; 
 int GIT_REPOSITORY_INIT_NO_DOTGIT_DIR ; 
 TYPE_1__ GIT_REPOSITORY_INIT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_REPOSITORY_INIT_SHARED_GROUP ; 
 int FUNC0 (int) ; 
 int S_ISGID ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

void FUNC23(void)
{
	git_reference *ref;
	git_remote *remote;
	struct stat st;
	git_repository_init_options opts = GIT_REPOSITORY_INIT_OPTIONS_INIT;

	opts.flags = GIT_REPOSITORY_INIT_MKPATH |
		GIT_REPOSITORY_INIT_NO_DOTGIT_DIR;
	opts.mode = GIT_REPOSITORY_INIT_SHARED_GROUP;
	opts.workdir_path = "../c_wd";
	opts.description = "Awesomest test repository evah";
	opts.initial_head = "development";
	opts.origin_url = "https://github.com/libgit2/libgit2.git";

	FUNC4(FUNC18(&_repo, "root/b/c.git", &opts));

	FUNC1(!FUNC6(FUNC22(_repo), "/c_wd/"));
	FUNC1(!FUNC6(FUNC21(_repo), "/c.git/"));
	FUNC1(FUNC7("root/b/c_wd/.git"));
	FUNC1(!FUNC19(_repo));
	/* repo will not be counted as empty because we set head to "development" */
	FUNC1(!FUNC20(_repo));

	FUNC4(FUNC8(FUNC21(_repo), &st));
	FUNC1(FUNC0(st.st_mode));
	if (FUNC5())
		FUNC1((S_ISGID & st.st_mode) == S_ISGID);
	else
		FUNC1((S_ISGID & st.st_mode) == 0);

	FUNC4(FUNC10(&ref, _repo, "HEAD"));
	FUNC1(FUNC12(ref) == GIT_REFERENCE_SYMBOLIC);
	FUNC2("refs/heads/development", FUNC11(ref));
	FUNC9(ref);

	FUNC4(FUNC14(&remote, _repo, "origin"));
	FUNC2("origin", FUNC15(remote));
	FUNC2(opts.origin_url, FUNC16(remote));
	FUNC13(remote);

	FUNC17(_repo);
	FUNC3("root");
}