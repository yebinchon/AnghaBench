#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; int /*<<< orphan*/  re; } ;
typedef  TYPE_1__ git_diff_driver_pattern ;
struct TYPE_11__ {int /*<<< orphan*/  fn_patterns; } ;
typedef  TYPE_2__ git_diff_driver ;
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int REG_NEGATE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,char const*,int) ; 
 int FUNC4 (TYPE_3__*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (char const*,char) ; 

__attribute__((used)) static int FUNC7(
	git_diff_driver *drv, const char *regex_str, int regex_flags)
{
	int error = 0;
	const char *scan, *end;
	git_diff_driver_pattern *pat = NULL;
	git_buf buf = GIT_BUF_INIT;

	for (scan = regex_str; scan; scan = end) {
		/* get pattern to fill in */
		if ((pat = FUNC0(drv->fn_patterns)) == NULL) {
			return -1;
		}

		pat->flags = regex_flags;
		if (*scan == '!') {
			pat->flags |= REG_NEGATE;
			++scan;
		}

		if ((end = FUNC6(scan, '\n')) != NULL) {
			error = FUNC3(&buf, scan, end - scan);
			end++;
		} else {
			error = FUNC4(&buf, scan);
		}
		if (error < 0)
			break;

		if ((error = FUNC5(&pat->re, buf.ptr, regex_flags)) != 0) {
			/*
			 * TODO: issue a warning
			 */
		}
	}

	if (error && pat != NULL)
		(void)FUNC1(drv->fn_patterns); /* release last item */
	FUNC2(&buf);

	/* We want to ignore bad patterns, so return success regardless */
	return 0;
}