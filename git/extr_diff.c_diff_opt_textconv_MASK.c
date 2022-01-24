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
struct TYPE_2__ {int allow_textconv; int textconv_set_via_cmdline; } ;
struct diff_options {TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 

__attribute__((used)) static int FUNC1(const struct option *opt,
			     const char *arg, int unset)
{
	struct diff_options *options = opt->value;

	FUNC0(arg);
	if (unset) {
		options->flags.allow_textconv = 0;
	} else {
		options->flags.allow_textconv = 1;
		options->flags.textconv_set_via_cmdline = 1;
	}
	return 0;
}