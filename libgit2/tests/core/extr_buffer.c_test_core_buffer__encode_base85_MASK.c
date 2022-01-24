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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int FUNC5 (char*) ; 

void FUNC6(void)
{
	git_buf buf = GIT_BUF_INIT;

	FUNC1(FUNC4(&buf, "this", 4));
	FUNC0("bZBXF", buf.ptr);
	FUNC2(&buf);

	FUNC1(FUNC4(&buf, "two rnds", 8));
	FUNC0("ba!tca&BaE", buf.ptr);
	FUNC2(&buf);

	FUNC1(FUNC4(&buf, "this is base 85 encoded",
		FUNC5("this is base 85 encoded")));
	FUNC0("bZBXFAZc?TVqtS-AUHK3Wo~0{WMyOk", buf.ptr);
	FUNC2(&buf);

	FUNC3(&buf);
}