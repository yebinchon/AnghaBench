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
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char,char*,char*,char*) ; 

void FUNC4(void)
{
	git_buf a = GIT_BUF_INIT;

	FUNC1(FUNC3(&a, '/', "test", "string", "join"));
	FUNC0("test/string/join", a.ptr);
	FUNC1(FUNC3(&a, '/', "test/", "string", "join"));
	FUNC0("test/string/join", a.ptr);
	FUNC1(FUNC3(&a, '/', "test/", "/string", "join"));
	FUNC0("test/string/join", a.ptr);
	FUNC1(FUNC3(&a, '/', "test/", "/string/", "join"));
	FUNC0("test/string/join", a.ptr);
	FUNC1(FUNC3(&a, '/', "test/", "/string/", "/join"));
	FUNC0("test/string/join", a.ptr);

	FUNC1(FUNC3(&a, '/', "", "string", "join"));
	FUNC0("string/join", a.ptr);
	FUNC1(FUNC3(&a, '/', "", "string/", "join"));
	FUNC0("string/join", a.ptr);
	FUNC1(FUNC3(&a, '/', "", "string/", "/join"));
	FUNC0("string/join", a.ptr);

	FUNC1(FUNC3(&a, '/', "string", "", "join"));
	FUNC0("string/join", a.ptr);
	FUNC1(FUNC3(&a, '/', "string/", "", "join"));
	FUNC0("string/join", a.ptr);
	FUNC1(FUNC3(&a, '/', "string/", "", "/join"));
	FUNC0("string/join", a.ptr);

	FUNC2(&a);
}