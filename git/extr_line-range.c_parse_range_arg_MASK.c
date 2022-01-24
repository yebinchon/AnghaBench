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
struct index_state {int dummy; } ;
typedef  int /*<<< orphan*/  nth_line_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,long) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,void*,long,long,long*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ,void*,long,long,long*,long*,char const*,struct index_state*) ; 

int FUNC3(const char *arg, nth_line_fn_t nth_line_cb,
		    void *cb_data, long lines, long anchor,
		    long *begin, long *end,
		    const char *path, struct index_state *istate)
{
	*begin = *end = 0;

	if (anchor < 1)
		anchor = 1;
	if (anchor > lines)
		anchor = lines + 1;

	if (*arg == ':' || (*arg == '^' && *(arg + 1) == ':')) {
		arg = FUNC2(arg, nth_line_cb, cb_data,
					   lines, anchor, begin, end,
					   path, istate);
		if (!arg || *arg)
			return -1;
		return 0;
	}

	arg = FUNC1(arg, nth_line_cb, cb_data, lines, -anchor, begin);

	if (*arg == ',')
		arg = FUNC1(arg + 1, nth_line_cb, cb_data, lines, *begin + 1, end);

	if (*arg)
		return -1;

	if (*begin && *end && *end < *begin) {
		FUNC0(*end, *begin);
	}

	return 0;
}