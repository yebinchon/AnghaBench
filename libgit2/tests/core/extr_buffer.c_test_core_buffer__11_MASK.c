#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char** strings; int count; } ;
typedef  TYPE_1__ git_strarray ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 

void FUNC4(void)
{
	git_buf a = GIT_BUF_INIT;
	git_strarray t;
	char *t1[] = { "nothing", "in", "common" };
	char *t2[] = { "something", "something else", "some other" };
	char *t3[] = { "something", "some fun", "no fun" };
	char *t4[] = { "happy", "happier", "happiest" };
	char *t5[] = { "happiest", "happier", "happy" };
	char *t6[] = { "no", "nope", "" };
	char *t7[] = { "", "doesn't matter" };

	t.strings = t1;
	t.count = 3;
	FUNC1(FUNC3(&a, &t));
	FUNC0(a.ptr, "");

	t.strings = t2;
	t.count = 3;
	FUNC1(FUNC3(&a, &t));
	FUNC0(a.ptr, "some");

	t.strings = t3;
	t.count = 3;
	FUNC1(FUNC3(&a, &t));
	FUNC0(a.ptr, "");

	t.strings = t4;
	t.count = 3;
	FUNC1(FUNC3(&a, &t));
	FUNC0(a.ptr, "happ");

	t.strings = t5;
	t.count = 3;
	FUNC1(FUNC3(&a, &t));
	FUNC0(a.ptr, "happ");

	t.strings = t6;
	t.count = 3;
	FUNC1(FUNC3(&a, &t));
	FUNC0(a.ptr, "");

	t.strings = t7;
	t.count = 3;
	FUNC1(FUNC3(&a, &t));
	FUNC0(a.ptr, "");

	FUNC2(&a);
}