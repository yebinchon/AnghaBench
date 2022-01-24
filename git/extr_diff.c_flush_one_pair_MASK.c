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
struct diff_options {int output_format; int /*<<< orphan*/  line_termination; int /*<<< orphan*/  file; int /*<<< orphan*/  prefix_length; } ;
struct diff_filepair {TYPE_1__* two; } ;
struct TYPE_2__ {char* path; } ;

/* Variables and functions */
 int DIFF_FORMAT_CHECKDIFF ; 
 int DIFF_FORMAT_NAME ; 
 int DIFF_FORMAT_NAME_STATUS ; 
 int DIFF_FORMAT_RAW ; 
 int /*<<< orphan*/  FUNC0 (struct diff_filepair*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_filepair*,struct diff_options*) ; 
 char* FUNC2 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct diff_filepair *p, struct diff_options *opt)
{
	int fmt = opt->output_format;

	if (fmt & DIFF_FORMAT_CHECKDIFF)
		FUNC0(p, opt);
	else if (fmt & (DIFF_FORMAT_RAW | DIFF_FORMAT_NAME_STATUS))
		FUNC1(p, opt);
	else if (fmt & DIFF_FORMAT_NAME) {
		const char *name_a, *name_b;
		name_a = p->two->path;
		name_b = NULL;
		FUNC4(opt->prefix_length, &name_a, &name_b);
		FUNC3(opt->file, "%s", FUNC2(opt));
		FUNC5(name_a, opt->file, opt->line_termination);
	}
}