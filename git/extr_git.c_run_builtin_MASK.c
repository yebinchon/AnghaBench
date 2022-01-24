#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct cmd_struct {int option; int (* fn ) (int,char const**,char const*) ;int /*<<< orphan*/  cmd; } ;
struct TYPE_4__ {scalar_t__ have_repository; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int DELAY_PAGER_CONFIG ; 
 int NEED_WORK_TREE ; 
 int RUN_SETUP ; 
 int RUN_SETUP_GENTLY ; 
 int SUPPORT_SUPER_PREFIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int USE_PAGER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct stat*) ; 
 scalar_t__ FUNC12 () ; 
 char* FUNC13 () ; 
 char* FUNC14 (int*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 TYPE_2__* startup_info ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 
 int FUNC17 (int,char const**,char const*) ; 
 TYPE_1__* the_repository ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char const**,char*) ; 
 int /*<<< orphan*/  FUNC21 (char const*) ; 
 int use_pager ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct cmd_struct *p, int argc, const char **argv)
{
	int status, help;
	struct stat st;
	const char *prefix;

	prefix = NULL;
	help = argc == 2 && !FUNC16(argv[1], "-h");
	if (!help) {
		if (p->option & RUN_SETUP)
			prefix = FUNC13();
		else if (p->option & RUN_SETUP_GENTLY) {
			int nongit_ok;
			prefix = FUNC14(&nongit_ok);
		}

		if (use_pager == -1 && p->option & (RUN_SETUP | RUN_SETUP_GENTLY) &&
		    !(p->option & DELAY_PAGER_CONFIG))
			use_pager = FUNC3(p->cmd);
		if (use_pager == -1 && p->option & USE_PAGER)
			use_pager = 1;

		if ((p->option & (RUN_SETUP | RUN_SETUP_GENTLY)) &&
		    startup_info->have_repository) /* get_git_dir() may set up repo, avoid that */
			FUNC21(prefix);
	}
	FUNC4();

	if (!help && FUNC12()) {
		if (!(p->option & SUPPORT_SUPER_PREFIX))
			FUNC5(FUNC2("%s doesn't support --super-prefix"), p->cmd);
	}

	if (!help && p->option & NEED_WORK_TREE)
		FUNC15();

	FUNC20(argv, "trace: built-in: git");
	FUNC19(p->cmd);
	FUNC18();

	FUNC22(the_repository->index);
	status = p->fn(argc, argv, prefix);
	FUNC22(the_repository->index);

	if (status)
		return status;

	/* Somebody closed stdout? */
	if (FUNC11(FUNC10(stdout), &st))
		return 0;
	/* Ignore write errors for pipes and sockets.. */
	if (FUNC0(st.st_mode) || FUNC1(st.st_mode))
		return 0;

	/* Check for ENOSPC and EIO errors.. */
	if (FUNC9(stdout))
		FUNC6(FUNC2("write failure on standard output"));
	if (FUNC8(stdout))
		FUNC5(FUNC2("unknown write failure on standard output"));
	if (FUNC7(stdout))
		FUNC6(FUNC2("close failed on standard output"));
	return 0;
}