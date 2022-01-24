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
struct replay_opts {int xopts_nr; char** xopts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,char const**) ; 
 int FUNC1 (char*,char const***) ; 
 char* FUNC2 (char const*) ; 

void FUNC3(struct replay_opts *opts, char *raw_opts)
{
	int i;
	char *strategy_opts_string = raw_opts;

	if (*strategy_opts_string == ' ')
		strategy_opts_string++;

	opts->xopts_nr = FUNC1(strategy_opts_string,
				       (const char ***)&opts->xopts);
	for (i = 0; i < opts->xopts_nr; i++) {
		const char *arg = opts->xopts[i];

		FUNC0(arg, "--", &arg);
		opts->xopts[i] = FUNC2(arg);
	}
}