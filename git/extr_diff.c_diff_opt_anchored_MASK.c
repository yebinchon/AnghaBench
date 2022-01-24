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
struct option {struct diff_options* value; } ;
struct diff_options {scalar_t__ anchors_nr; int /*<<< orphan*/ * anchors; int /*<<< orphan*/  anchors_alloc; int /*<<< orphan*/  xdl_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PATIENCE_DIFF ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const struct option *opt,
			     const char *arg, int unset)
{
	struct diff_options *options = opt->value;

	FUNC1(unset);
	options->xdl_opts = FUNC2(options, PATIENCE_DIFF);
	FUNC0(options->anchors, options->anchors_nr + 1,
		   options->anchors_alloc);
	options->anchors[options->anchors_nr++] = FUNC3(arg);
	return 0;
}