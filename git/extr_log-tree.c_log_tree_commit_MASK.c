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
struct TYPE_2__ {int close_file; int /*<<< orphan*/  file; } ;
struct rev_info {char* break_bar; TYPE_1__ diffopt; struct log_info* loginfo; scalar_t__ reverse_output_stage; int /*<<< orphan*/  linear; scalar_t__ track_linear; scalar_t__ always_show_header; scalar_t__ line_level_traverse; } ;
struct log_info {int /*<<< orphan*/ * parent; struct commit* commit; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (struct rev_info*,struct commit*) ; 
 int FUNC3 (struct rev_info*,struct commit*,struct log_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct rev_info*) ; 

int FUNC6(struct rev_info *opt, struct commit *commit)
{
	struct log_info log;
	int shown, close_file = opt->diffopt.close_file;

	log.commit = commit;
	log.parent = NULL;
	opt->loginfo = &log;
	opt->diffopt.close_file = 0;

	if (opt->line_level_traverse)
		return FUNC2(opt, commit);

	if (opt->track_linear && !opt->linear && !opt->reverse_output_stage)
		FUNC1(opt->diffopt.file, "\n%s\n", opt->break_bar);
	shown = FUNC3(opt, commit, &log);
	if (!shown && opt->loginfo && opt->always_show_header) {
		log.parent = NULL;
		FUNC5(opt);
		shown = 1;
	}
	if (opt->track_linear && !opt->linear && opt->reverse_output_stage)
		FUNC1(opt->diffopt.file, "\n%s\n", opt->break_bar);
	opt->loginfo = NULL;
	FUNC4(opt->diffopt.file, "stdout");
	if (close_file)
		FUNC0(opt->diffopt.file);
	return shown;
}