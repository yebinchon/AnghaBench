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
struct args_info {int pos; } ;
struct TYPE_4__ {int no_commit; } ;
typedef  TYPE_1__ merge_options ;

/* Variables and functions */
 struct args_info ARGS_INFO_INIT ; 
 scalar_t__ FUNC0 (char const**,struct args_info*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static void FUNC4(const char **repo_path, merge_options *opts, int argc, char **argv)
{
	struct args_info args = ARGS_INFO_INIT;

	if (argc <= 1)
		FUNC2();

	for (args.pos = 1; args.pos < argc; ++args.pos) {
		const char *curr = argv[args.pos];

		if (curr[0] != '-') {
			FUNC1(opts, curr);
		} else if (!FUNC3(curr, "--no-commit")) {
			opts->no_commit = 1;
		} else if (FUNC0(repo_path, &args, "--git-dir")) {
			continue;
		} else {
			FUNC2();
		}
	}
}