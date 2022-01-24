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
struct TYPE_7__ {scalar_t__ size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_string ; 
 int /*<<< orphan*/  test_string_x2 ; 

void FUNC6(void)
{
	git_buf buf = GIT_BUF_INIT;

	FUNC0(buf.size == 0);

	FUNC5(&buf, test_string);
	FUNC0(FUNC4(&buf) == 0);
	FUNC1(test_string, FUNC2(&buf));

	FUNC5(&buf, test_string);
	FUNC0(FUNC4(&buf) == 0);
	FUNC1(test_string_x2, FUNC2(&buf));

	FUNC3(&buf);
}