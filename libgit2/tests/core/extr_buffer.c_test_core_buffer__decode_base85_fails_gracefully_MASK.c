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
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

void FUNC6(void)
{
	git_buf buf = GIT_BUF_INIT;

	FUNC5(&buf, "foobar");

	FUNC2(FUNC3(&buf, "invalid charsZZ", 15, 42));
	FUNC2(FUNC3(&buf, "invalidchars__ ", 15, 42));
	FUNC2(FUNC3(&buf, "overflowZZ~~~~~", 15, 42));
	FUNC2(FUNC3(&buf, "truncated", 9, 42));
	FUNC1(6, buf.size);
	FUNC0("foobar", buf.ptr);

	FUNC4(&buf);
}