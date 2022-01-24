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
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int,int) ; 

void FUNC7(void)
{
	git_buf out = GIT_BUF_INIT,
		append = GIT_BUF_INIT;

	/* create a new file */
	FUNC5(&out, "hello!\n");
	FUNC3(&out, "this is a %s\n", "test");

	FUNC1(FUNC6(&out, "futils/test-file", O_RDWR|O_CREAT, 0666));

	FUNC0(out.ptr, out.size, "futils/test-file");

	/* append some more data */
	FUNC5(&append, "And some more!\n");
	FUNC4(&out, append.ptr, append.size);

	FUNC1(FUNC6(&append, "futils/test-file", O_RDWR|O_APPEND, 0666));

	FUNC0(out.ptr, out.size, "futils/test-file");

	FUNC2(&out);
	FUNC2(&append);
}