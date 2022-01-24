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
struct diff_options {char const* line_prefix; int /*<<< orphan*/  line_prefix_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const struct option *opt,
				const char *optarg, int unset)
{
	struct diff_options *options = opt->value;

	FUNC0(unset);
	options->line_prefix = optarg;
	options->line_prefix_length = FUNC2(options->line_prefix);
	FUNC1(options);
	return 0;
}