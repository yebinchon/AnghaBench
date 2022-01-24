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
struct option {struct diff_options* value; } ;
struct TYPE_2__ {int stat_with_summary; } ;
struct diff_options {int /*<<< orphan*/  output_format; TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  DIFF_FORMAT_DIFFSTAT ; 

__attribute__((used)) static int FUNC1(const struct option *opt,
				    const char *arg, int unset)
{
	struct diff_options *options = opt->value;

	FUNC0(arg);
	if (unset) {
		options->flags.stat_with_summary = 0;
	} else {
		options->flags.stat_with_summary = 1;
		options->output_format |= DIFF_FORMAT_DIFFSTAT;
	}
	return 0;
}