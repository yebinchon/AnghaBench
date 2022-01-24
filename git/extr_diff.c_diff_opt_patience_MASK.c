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
struct diff_options {int anchors_nr; int /*<<< orphan*/ * anchors; int /*<<< orphan*/  xdl_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct diff_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PATIENCE_DIFF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct option *opt,
			     const char *arg, int unset)
{
	struct diff_options *options = opt->value;
	int i;

	FUNC1(unset);
	FUNC0(arg);
	options->xdl_opts = FUNC2(options, PATIENCE_DIFF);
	/*
	 * Both --patience and --anchored use PATIENCE_DIFF
	 * internally, so remove any anchors previously
	 * specified.
	 */
	for (i = 0; i < options->anchors_nr; i++)
		FUNC3(options->anchors[i]);
	options->anchors_nr = 0;
	return 0;
}