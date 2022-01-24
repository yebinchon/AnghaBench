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
struct diff_options {int ws_error_highlight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const struct option *option,
				       const char *arg, int unset)
{
	struct diff_options *opt = option->value;
	int val = FUNC3(arg);

	FUNC0(unset);
	if (val < 0)
		return FUNC2(FUNC1("unknown value after ws-error-highlight=%.*s"),
			     -1 - val, arg);
	opt->ws_error_highlight = val;
	return 0;
}