#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*,char*) ; 

void FUNC6(void)
{
	git_buf a = GIT_BUF_INIT;

	FUNC2(&a);
	FUNC1(FUNC5(&a, "this is a test", "", ""));
	FUNC0("this is a test", a.ptr);

	FUNC2(&a);
	FUNC1(FUNC5(&a, "this is a test", "t", "\\"));
	FUNC0("\\this is a \\tes\\t", a.ptr);

	FUNC2(&a);
	FUNC1(FUNC5(&a, "this is a test", "i ", "__"));
	FUNC0("th__is__ __is__ a__ test", a.ptr);

	FUNC2(&a);
	FUNC1(FUNC4(&a, "^match\\s*[A-Z]+.*"));
	FUNC0("\\^match\\\\s\\*\\[A-Z\\]\\+\\.\\*", a.ptr);

	FUNC3(&a);
}