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
struct diff_options {int line_termination; int output_format; int /*<<< orphan*/  file; int /*<<< orphan*/  prefix_length; int /*<<< orphan*/  abbrev; } ;
struct diff_filepair {int status; TYPE_2__* two; TYPE_1__* one; scalar_t__ score; } ;
struct TYPE_4__ {int mode; char* path; int /*<<< orphan*/  oid; } ;
struct TYPE_3__ {int mode; char* path; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int DIFF_FORMAT_NAME_STATUS ; 
 scalar_t__ DIFF_STATUS_COPIED ; 
 scalar_t__ DIFF_STATUS_RENAMED ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct diff_filepair *p, struct diff_options *opt)
{
	int line_termination = opt->line_termination;
	int inter_name_termination = line_termination ? '\t' : '\0';

	FUNC2(opt->file, "%s", FUNC1(opt));
	if (!(opt->output_format & DIFF_FORMAT_NAME_STATUS)) {
		FUNC2(opt->file, ":%06o %06o %s ", p->one->mode, p->two->mode,
			FUNC0(&p->one->oid, opt->abbrev));
		FUNC2(opt->file, "%s ",
			FUNC0(&p->two->oid, opt->abbrev));
	}
	if (p->score) {
		FUNC2(opt->file, "%c%03d%c", p->status, FUNC3(p),
			inter_name_termination);
	} else {
		FUNC2(opt->file, "%c%c", p->status, inter_name_termination);
	}

	if (p->status == DIFF_STATUS_COPIED ||
	    p->status == DIFF_STATUS_RENAMED) {
		const char *name_a, *name_b;
		name_a = p->one->path;
		name_b = p->two->path;
		FUNC4(opt->prefix_length, &name_a, &name_b);
		FUNC5(name_a, opt->file, inter_name_termination);
		FUNC5(name_b, opt->file, line_termination);
	} else {
		const char *name_a, *name_b;
		name_a = p->one->mode ? p->one->path : p->two->path;
		name_b = NULL;
		FUNC4(opt->prefix_length, &name_a, &name_b);
		FUNC5(name_a, opt->file, line_termination);
	}
}