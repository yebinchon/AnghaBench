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
struct grep_source {char* buf; unsigned long size; } ;
struct grep_opt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GREP_SOURCE_BUF ; 
 int FUNC0 (struct grep_opt*,struct grep_source*) ; 
 int /*<<< orphan*/  FUNC1 (struct grep_source*) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_source*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(struct grep_opt *opt, char *buf, unsigned long size)
{
	struct grep_source gs;
	int r;

	FUNC2(&gs, GREP_SOURCE_BUF, NULL, NULL, NULL);
	gs.buf = buf;
	gs.size = size;

	r = FUNC0(opt, &gs);

	FUNC1(&gs);
	return r;
}