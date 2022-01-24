#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  asize; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_EINVALID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (char const*) ; 

void FUNC6(void)
{
	const char *somestring = "blah blah";
	git_buf buf = GIT_BUF_INIT;

	FUNC3(&buf, somestring, FUNC5(somestring) + 1);
	FUNC1(somestring, buf.ptr);
	FUNC0(0, buf.asize);
	FUNC0(FUNC5(somestring) + 1, buf.size);

	FUNC2(GIT_EINVALID, FUNC4(&buf, 1024));
}