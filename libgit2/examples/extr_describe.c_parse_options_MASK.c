#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int always_use_long_format; int /*<<< orphan*/ * dirty_suffix; int /*<<< orphan*/  abbreviated_size; } ;
struct TYPE_11__ {int show_commit_oid_as_fallback; int only_follow_first_parent; int /*<<< orphan*/  pattern; scalar_t__ max_candidates_tags; int /*<<< orphan*/  describe_strategy; } ;
struct TYPE_13__ {scalar_t__ commit_count; TYPE_2__ format_options; TYPE_1__ describe_options; } ;
typedef  TYPE_3__ describe_options ;
struct TYPE_14__ {int pos; } ;
typedef  TYPE_4__ args_info ;

/* Variables and functions */
 TYPE_4__ ARGS_INFO_INIT ; 
 int /*<<< orphan*/  GIT_DESCRIBE_ALL ; 
 int /*<<< orphan*/  GIT_DESCRIBE_TAGS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int*,TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 

__attribute__((used)) static void FUNC7(describe_options *opts, int argc, char **argv)
{
	args_info args = ARGS_INFO_INIT;

	for (args.pos = 1; args.pos < argc; ++args.pos) {
		const char *curr = argv[args.pos];

		if (curr[0] != '-') {
			FUNC4(opts, curr);
		} else if (!FUNC6(curr, "--all")) {
			opts->describe_options.describe_strategy = GIT_DESCRIBE_ALL;
		} else if (!FUNC6(curr, "--tags")) {
			opts->describe_options.describe_strategy = GIT_DESCRIBE_TAGS;
		} else if (!FUNC6(curr, "--exact-match")) {
			opts->describe_options.max_candidates_tags = 0;
		} else if (!FUNC6(curr, "--long")) {
			opts->format_options.always_use_long_format = 1;
		} else if (!FUNC6(curr, "--always")) {
			opts->describe_options.show_commit_oid_as_fallback = 1;
		} else if (!FUNC6(curr, "--first-parent")) {
			opts->describe_options.only_follow_first_parent = 1;
		} else if (FUNC3(&opts->format_options.dirty_suffix, &args, "--dirty", "-dirty")) {
		} else if (FUNC1((int *)&opts->format_options.abbreviated_size, &args, "--abbrev", 0)) {
		} else if (FUNC1((int *)&opts->describe_options.max_candidates_tags, &args, "--candidates", 0)) {
		} else if (FUNC2(&opts->describe_options.pattern, &args, "--match")) {
		} else {
			FUNC5();
		}
	}

	if (opts->commit_count > 0) {
		if (opts->format_options.dirty_suffix)
			FUNC0("--dirty is incompatible with commit-ishes", NULL);
	}
	else {
		if (!opts->format_options.dirty_suffix || !opts->format_options.dirty_suffix[0]) {
			FUNC4(opts, "HEAD");
		}
	}
}