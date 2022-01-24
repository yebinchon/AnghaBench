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
struct diff_options {unsigned int color_moved_ws_handling; } ;

/* Variables and functions */
 unsigned int COLOR_MOVED_WS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 unsigned int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const struct option *opt,
				   const char *arg, int unset)
{
	struct diff_options *options = opt->value;
	unsigned cm;

	if (unset) {
		options->color_moved_ws_handling = 0;
		return 0;
	}

	cm = FUNC2(arg);
	if (cm & COLOR_MOVED_WS_ERROR)
		return FUNC1(FUNC0("invalid mode '%s' in --color-moved-ws"), arg);
	options->color_moved_ws_handling = cm;
	return 0;
}