#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* ptr; scalar_t__ size; scalar_t__ asize; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,scalar_t__) ; 
 char* FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC10 (char const*) ; 

void FUNC11(void)
{
	const char *fun = "This is fun";
	git_buf a = GIT_BUF_INIT;
	char *b = NULL;

	FUNC9(&a, "foo");
	FUNC0(FUNC8(&a) == 0);
	FUNC1("foo", FUNC5(&a));

	b = FUNC6(&a);

	FUNC1("foo", b);
	FUNC1("", a.ptr);
	FUNC2(b);

	b = FUNC6(&a);

	FUNC1(NULL, b);
	FUNC1("", a.ptr);

	FUNC7(&a);

	b = FUNC3(fun);
	FUNC4(&a, b, 0);

	FUNC1(fun, a.ptr);
	FUNC0(a.size == FUNC10(fun));
	FUNC0(a.asize == FUNC10(fun) + 1);

	FUNC7(&a);

	b = FUNC3(fun);
	FUNC4(&a, b, FUNC10(fun) + 1);

	FUNC1(fun, a.ptr);
	FUNC0(a.size == FUNC10(fun));
	FUNC0(a.asize == FUNC10(fun) + 1);

	FUNC7(&a);
}