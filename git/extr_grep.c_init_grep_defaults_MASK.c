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
struct repository {int dummy; } ;
struct grep_opt {int relative; int pathname; int max_depth; int color; int /*<<< orphan*/  output; scalar_t__ only_matching; int /*<<< orphan*/ * colors; int /*<<< orphan*/  pattern_type_option; struct repository* repo; } ;

/* Variables and functions */
 char* GIT_COLOR_BOLD_RED ; 
 char* GIT_COLOR_CYAN ; 
 size_t GREP_COLOR_COLUMNNO ; 
 size_t GREP_COLOR_CONTEXT ; 
 size_t GREP_COLOR_FILENAME ; 
 size_t GREP_COLOR_FUNCTION ; 
 size_t GREP_COLOR_LINENO ; 
 size_t GREP_COLOR_MATCH_CONTEXT ; 
 size_t GREP_COLOR_MATCH_SELECTED ; 
 size_t GREP_COLOR_SELECTED ; 
 size_t GREP_COLOR_SEP ; 
 int /*<<< orphan*/  GREP_PATTERN_TYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct grep_opt grep_defaults ; 
 int /*<<< orphan*/  FUNC1 (struct grep_opt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  std_output ; 

void FUNC2(struct repository *repo)
{
	struct grep_opt *opt = &grep_defaults;
	static int run_once;

	if (run_once)
		return;
	run_once++;

	FUNC1(opt, 0, sizeof(*opt));
	opt->repo = repo;
	opt->relative = 1;
	opt->pathname = 1;
	opt->max_depth = -1;
	opt->pattern_type_option = GREP_PATTERN_TYPE_UNSPECIFIED;
	FUNC0(opt->colors[GREP_COLOR_CONTEXT], "");
	FUNC0(opt->colors[GREP_COLOR_FILENAME], "");
	FUNC0(opt->colors[GREP_COLOR_FUNCTION], "");
	FUNC0(opt->colors[GREP_COLOR_LINENO], "");
	FUNC0(opt->colors[GREP_COLOR_COLUMNNO], "");
	FUNC0(opt->colors[GREP_COLOR_MATCH_CONTEXT], GIT_COLOR_BOLD_RED);
	FUNC0(opt->colors[GREP_COLOR_MATCH_SELECTED], GIT_COLOR_BOLD_RED);
	FUNC0(opt->colors[GREP_COLOR_SELECTED], "");
	FUNC0(opt->colors[GREP_COLOR_SEP], GIT_COLOR_CYAN);
	opt->only_matching = 0;
	opt->color = -1;
	opt->output = std_output;
}