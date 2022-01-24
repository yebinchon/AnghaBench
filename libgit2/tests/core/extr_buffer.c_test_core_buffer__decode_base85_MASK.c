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
struct TYPE_6__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(void)
{
	git_buf buf = GIT_BUF_INIT;

	FUNC2(FUNC4(&buf, "bZBXF", 5, 4));
	FUNC1(4, buf.size);
	FUNC0("this", buf.ptr);
	FUNC3(&buf);

	FUNC2(FUNC4(&buf, "ba!tca&BaE", 10, 8));
	FUNC1(8, buf.size);
	FUNC0("two rnds", buf.ptr);
	FUNC3(&buf);

	FUNC2(FUNC4(&buf, "bZBXFAZc?TVqtS-AUHK3Wo~0{WMyOk", 30, 23));
	FUNC1(23, buf.size);
	FUNC0("this is base 85 encoded", buf.ptr);
	FUNC3(&buf);

	FUNC5(&buf);
}