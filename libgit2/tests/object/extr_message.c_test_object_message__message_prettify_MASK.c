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
struct TYPE_5__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC5(void)
{
	git_buf buffer;

	FUNC4(&buffer, 0, sizeof(buffer));
	FUNC1(FUNC3(&buffer, "", 0, '#'));
	FUNC0(buffer.ptr, "");
	FUNC2(&buffer);
	FUNC1(FUNC3(&buffer, "", 1, '#'));
	FUNC0(buffer.ptr, "");
	FUNC2(&buffer);

	FUNC1(FUNC3(&buffer, "Short", 0, '#'));
	FUNC0("Short\n", buffer.ptr);
	FUNC2(&buffer);
	FUNC1(FUNC3(&buffer, "Short", 1, '#'));
	FUNC0("Short\n", buffer.ptr);
	FUNC2(&buffer);

	FUNC1(FUNC3(&buffer, "This is longer\nAnd multiline\n# with some comments still in\n", 0, '#'));
	FUNC0(buffer.ptr, "This is longer\nAnd multiline\n# with some comments still in\n");
	FUNC2(&buffer);

	FUNC1(FUNC3(&buffer, "This is longer\nAnd multiline\n# with some comments still in\n", 1, '#'));
	FUNC0(buffer.ptr, "This is longer\nAnd multiline\n");
	FUNC2(&buffer);
}