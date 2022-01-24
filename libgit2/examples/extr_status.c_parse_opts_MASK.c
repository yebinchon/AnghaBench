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
struct TYPE_3__ {char** strings; scalar_t__ count; } ;
struct TYPE_4__ {int flags; TYPE_1__ pathspec; } ;
struct opts {scalar_t__ npaths; char** pathspec; scalar_t__ format; int showbranch; int zterm; char* repodir; int repeat; int showsubmod; TYPE_2__ statusopt; } ;
struct args_info {int pos; } ;

/* Variables and functions */
 struct args_info ARGS_INFO_INIT ; 
 scalar_t__ FORMAT_DEFAULT ; 
 scalar_t__ FORMAT_LONG ; 
 void* FORMAT_PORCELAIN ; 
 scalar_t__ FORMAT_SHORT ; 
 int GIT_STATUS_OPT_EXCLUDE_SUBMODULES ; 
 int GIT_STATUS_OPT_INCLUDE_IGNORED ; 
 int GIT_STATUS_OPT_INCLUDE_UNTRACKED ; 
 int GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS ; 
 scalar_t__ MAX_PATHSPEC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int*,struct args_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static void FUNC6(struct opts *o, int argc, char *argv[])
{
	struct args_info args = ARGS_INFO_INIT;

	for (args.pos = 1; args.pos < argc; ++args.pos) {
		char *a = argv[args.pos];

		if (a[0] != '-') {
			if (o->npaths < MAX_PATHSPEC)
				o->pathspec[o->npaths++] = a;
			else
				FUNC1("Example only supports a limited pathspec", NULL);
		}
		else if (!FUNC3(a, "-s") || !FUNC3(a, "--short"))
			o->format = FORMAT_SHORT;
		else if (!FUNC3(a, "--long"))
			o->format = FORMAT_LONG;
		else if (!FUNC3(a, "--porcelain"))
			o->format = FORMAT_PORCELAIN;
		else if (!FUNC3(a, "-b") || !FUNC3(a, "--branch"))
			o->showbranch = 1;
		else if (!FUNC3(a, "-z")) {
			o->zterm = 1;
			if (o->format == FORMAT_DEFAULT)
				o->format = FORMAT_PORCELAIN;
		}
		else if (!FUNC3(a, "--ignored"))
			o->statusopt.flags |= GIT_STATUS_OPT_INCLUDE_IGNORED;
		else if (!FUNC3(a, "-uno") ||
				 !FUNC3(a, "--untracked-files=no"))
			o->statusopt.flags &= ~GIT_STATUS_OPT_INCLUDE_UNTRACKED;
		else if (!FUNC3(a, "-unormal") ||
				 !FUNC3(a, "--untracked-files=normal"))
			o->statusopt.flags |= GIT_STATUS_OPT_INCLUDE_UNTRACKED;
		else if (!FUNC3(a, "-uall") ||
				 !FUNC3(a, "--untracked-files=all"))
			o->statusopt.flags |= GIT_STATUS_OPT_INCLUDE_UNTRACKED |
				GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS;
		else if (!FUNC3(a, "--ignore-submodules=all"))
			o->statusopt.flags |= GIT_STATUS_OPT_EXCLUDE_SUBMODULES;
		else if (!FUNC5(a, "--git-dir=", FUNC4("--git-dir=")))
			o->repodir = a + FUNC4("--git-dir=");
		else if (!FUNC3(a, "--repeat"))
			o->repeat = 10;
		else if (FUNC2(&o->repeat, &args, "--repeat", 0))
			/* okay */;
		else if (!FUNC3(a, "--list-submodules"))
			o->showsubmod = 1;
		else
			FUNC0(-1, "Unsupported option", a);
	}

	if (o->format == FORMAT_DEFAULT)
		o->format = FORMAT_LONG;
	if (o->format == FORMAT_LONG)
		o->showbranch = 1;
	if (o->npaths > 0) {
		o->statusopt.pathspec.strings = o->pathspec;
		o->statusopt.pathspec.count   = o->npaths;
	}
}