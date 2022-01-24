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
struct diff_options {int /*<<< orphan*/  output_format; int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC5(const struct option *opt,
			    const char *arg, int unset)
{
	struct diff_options *options = opt->value;
	char *s;

	FUNC0(unset);

	if (arg) {
		options->context = FUNC4(arg, &s, 10);
		if (*s)
			return FUNC3(FUNC1("%s expects a numerical value"), "--unified");
	}
	FUNC2(&options->output_format);

	return 0;
}