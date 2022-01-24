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
struct tr2_dst {int fd; int need_close; int initialized; int /*<<< orphan*/  sysenv_var; } ;

/* Variables and functions */
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tr2_dst*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tr2_dst *dst, const char *tgt_value)
{
	int fd = FUNC0(tgt_value, O_WRONLY | O_APPEND | O_CREAT, 0666);
	if (fd == -1) {
		if (FUNC3())
			FUNC5("trace2: could not open '%s' for '%s' tracing: %s",
				tgt_value,
				FUNC4(dst->sysenv_var),
				FUNC1(errno));

		FUNC2(dst);
		return 0;
	}

	dst->fd = fd;
	dst->need_close = 1;
	dst->initialized = 1;

	return dst->fd;
}