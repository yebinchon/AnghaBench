#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char,int,char*,...) ; 

void FUNC5(void)
{
	git_buf a = GIT_BUF_INIT;

	FUNC1(FUNC4(&a, '/', 1, "test"));
	FUNC0(a.ptr, "test");
	FUNC1(FUNC4(&a, '/', 1, "string"));
	FUNC0(a.ptr, "test/string");
	FUNC2(&a);
	FUNC1(FUNC4(&a, '/', 3, "test", "string", "join"));
	FUNC0(a.ptr, "test/string/join");
	FUNC1(FUNC4(&a, '/', 2, a.ptr, "more"));
	FUNC0(a.ptr, "test/string/join/test/string/join/more");

	FUNC3(&a);
}