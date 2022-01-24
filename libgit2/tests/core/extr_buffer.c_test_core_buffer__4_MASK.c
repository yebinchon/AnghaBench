#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* ptr; int size; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	git_buf buf = GIT_BUF_INIT;
	int i;

	for (i = 0; i < 10; ++i) {
		FUNC6(&buf, "1234"); /* add 4 */
		FUNC0(FUNC5(&buf) == 0);
		FUNC2(&buf, buf.ptr + 2); /* eat the first two */
		FUNC0(FUNC7(FUNC3(&buf)) == (size_t)((i + 1) * 2));
	}
	/* we have appended 1234 10x and removed the first 20 letters */
	FUNC1("12341234123412341234", FUNC3(&buf));

	FUNC2(&buf, NULL);
	FUNC1("12341234123412341234", FUNC3(&buf));

	FUNC2(&buf, "invalid pointer");
	FUNC1("12341234123412341234", FUNC3(&buf));

	FUNC2(&buf, buf.ptr);
	FUNC1("12341234123412341234", FUNC3(&buf));

	FUNC2(&buf, buf.ptr + 1);
	FUNC1("2341234123412341234", FUNC3(&buf));

	FUNC2(&buf, buf.ptr + buf.size);
	FUNC1("", FUNC3(&buf));

	FUNC4(&buf);
}