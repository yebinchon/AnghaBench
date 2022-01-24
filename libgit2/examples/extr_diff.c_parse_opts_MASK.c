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
struct TYPE_3__ {int id_abbrev; int /*<<< orphan*/  new_prefix; int /*<<< orphan*/  old_prefix; int /*<<< orphan*/  interhunk_lines; int /*<<< orphan*/  context_lines; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int rename_threshold; int copy_threshold; int /*<<< orphan*/  flags; } ;
struct opts {char const* treeish1; char const* treeish2; scalar_t__ cache; scalar_t__ no_index; int color; int /*<<< orphan*/  dir; TYPE_1__ diffopts; TYPE_2__ findopts; int /*<<< orphan*/  output; void* format; } ;
struct args_info {int pos; } ;

/* Variables and functions */
 struct args_info ARGS_INFO_INIT ; 
 scalar_t__ CACHE_NONE ; 
 scalar_t__ CACHE_ONLY ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_COPIES ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_RENAMES ; 
 int /*<<< orphan*/  GIT_DIFF_FIND_REWRITES ; 
 int /*<<< orphan*/  GIT_DIFF_FORCE_TEXT ; 
 void* GIT_DIFF_FORMAT_NAME_ONLY ; 
 void* GIT_DIFF_FORMAT_NAME_STATUS ; 
 void* GIT_DIFF_FORMAT_PATCH ; 
 void* GIT_DIFF_FORMAT_RAW ; 
 int /*<<< orphan*/  GIT_DIFF_IGNORE_WHITESPACE ; 
 int /*<<< orphan*/  GIT_DIFF_IGNORE_WHITESPACE_CHANGE ; 
 int /*<<< orphan*/  GIT_DIFF_IGNORE_WHITESPACE_EOL ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_IGNORED ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNTRACKED ; 
 int /*<<< orphan*/  GIT_DIFF_MINIMAL ; 
 int /*<<< orphan*/  GIT_DIFF_PATIENCE ; 
 int /*<<< orphan*/  GIT_DIFF_REVERSE ; 
 int /*<<< orphan*/  OUTPUT_DIFF ; 
 int /*<<< orphan*/  OUTPUT_NUMSTAT ; 
 int /*<<< orphan*/  OUTPUT_SHORTSTAT ; 
 int /*<<< orphan*/  OUTPUT_STAT ; 
 int /*<<< orphan*/  OUTPUT_SUMMARY ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct args_info*,char*) ; 
 scalar_t__ FUNC2 (int*,struct args_info*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct args_info*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static void FUNC6(struct opts *o, int argc, char *argv[])
{
	struct args_info args = ARGS_INFO_INIT;


	for (args.pos = 1; args.pos < argc; ++args.pos) {
		const char *a = argv[args.pos];

		if (a[0] != '-') {
			if (o->treeish1 == NULL)
				o->treeish1 = a;
			else if (o->treeish2 == NULL)
				o->treeish2 = a;
			else
				FUNC5("Only one or two tree identifiers can be provided", NULL);
		}
		else if (!FUNC4(a, "-p") || !FUNC4(a, "-u") ||
				 !FUNC4(a, "--patch")) {
			o->output |= OUTPUT_DIFF;
			o->format = GIT_DIFF_FORMAT_PATCH;
		}
		else if (!FUNC4(a, "--cached")) {
			o->cache = CACHE_ONLY;
			if (o->no_index >= 0) FUNC5("--cached and --no-index are incompatible", NULL);
		} else if (!FUNC4(a, "--nocache"))
			o->cache = CACHE_NONE;
		else if (!FUNC4(a, "--name-only") || !FUNC4(a, "--format=name"))
			o->format = GIT_DIFF_FORMAT_NAME_ONLY;
		else if (!FUNC4(a, "--name-status") ||
				!FUNC4(a, "--format=name-status"))
			o->format = GIT_DIFF_FORMAT_NAME_STATUS;
		else if (!FUNC4(a, "--raw") || !FUNC4(a, "--format=raw"))
			o->format = GIT_DIFF_FORMAT_RAW;
		else if (!FUNC4(a, "--format=diff-index")) {
			o->format = GIT_DIFF_FORMAT_RAW;
			o->diffopts.id_abbrev = 40;
		}
		else if (!FUNC4(a, "--no-index")) {
			o->no_index = 0;
			if (o->cache == CACHE_ONLY) FUNC5("--cached and --no-index are incompatible", NULL);
		} else if (!FUNC4(a, "--color"))
			o->color = 0;
		else if (!FUNC4(a, "--no-color"))
			o->color = -1;
		else if (!FUNC4(a, "-R"))
			o->diffopts.flags |= GIT_DIFF_REVERSE;
		else if (!FUNC4(a, "-a") || !FUNC4(a, "--text"))
			o->diffopts.flags |= GIT_DIFF_FORCE_TEXT;
		else if (!FUNC4(a, "--ignore-space-at-eol"))
			o->diffopts.flags |= GIT_DIFF_IGNORE_WHITESPACE_EOL;
		else if (!FUNC4(a, "-b") || !FUNC4(a, "--ignore-space-change"))
			o->diffopts.flags |= GIT_DIFF_IGNORE_WHITESPACE_CHANGE;
		else if (!FUNC4(a, "-w") || !FUNC4(a, "--ignore-all-space"))
			o->diffopts.flags |= GIT_DIFF_IGNORE_WHITESPACE;
		else if (!FUNC4(a, "--ignored"))
			o->diffopts.flags |= GIT_DIFF_INCLUDE_IGNORED;
		else if (!FUNC4(a, "--untracked"))
			o->diffopts.flags |= GIT_DIFF_INCLUDE_UNTRACKED;
		else if (!FUNC4(a, "--patience"))
			o->diffopts.flags |= GIT_DIFF_PATIENCE;
		else if (!FUNC4(a, "--minimal"))
			o->diffopts.flags |= GIT_DIFF_MINIMAL;
		else if (!FUNC4(a, "--stat"))
			o->output |= OUTPUT_STAT;
		else if (!FUNC4(a, "--numstat"))
			o->output |= OUTPUT_NUMSTAT;
		else if (!FUNC4(a, "--shortstat"))
			o->output |= OUTPUT_SHORTSTAT;
		else if (!FUNC4(a, "--summary"))
			o->output |= OUTPUT_SUMMARY;
		else if (FUNC2(
				&o->findopts.rename_threshold, &args, "-M") ||
			FUNC2(
				&o->findopts.rename_threshold, &args, "--find-renames"))
			o->findopts.flags |= GIT_DIFF_FIND_RENAMES;
		else if (FUNC2(
				&o->findopts.copy_threshold, &args, "-C") ||
			FUNC2(
				&o->findopts.copy_threshold, &args, "--find-copies"))
			o->findopts.flags |= GIT_DIFF_FIND_COPIES;
		else if (!FUNC4(a, "--find-copies-harder"))
			o->findopts.flags |= GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED;
		else if (FUNC0(a, "-B") || FUNC0(a, "--break-rewrites"))
			/* TODO: parse thresholds */
			o->findopts.flags |= GIT_DIFF_FIND_REWRITES;
		else if (!FUNC3(
				&o->diffopts.context_lines, &args, "-U") &&
			!FUNC3(
				&o->diffopts.context_lines, &args, "--unified") &&
			!FUNC3(
				&o->diffopts.interhunk_lines, &args, "--inter-hunk-context") &&
			!FUNC2(
				&o->diffopts.id_abbrev, &args, "--abbrev") &&
			!FUNC1(&o->diffopts.old_prefix, &args, "--src-prefix") &&
			!FUNC1(&o->diffopts.new_prefix, &args, "--dst-prefix") &&
			!FUNC1(&o->dir, &args, "--git-dir"))
			FUNC5("Unknown command line argument", a);
	}
}