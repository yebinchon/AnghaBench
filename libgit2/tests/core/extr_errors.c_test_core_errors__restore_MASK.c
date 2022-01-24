#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_error_state ;
struct TYPE_7__ {int /*<<< orphan*/  message; int /*<<< orphan*/  klass; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_5__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 

void FUNC9(void)
{
	git_error_state err_state = {0};

	FUNC3();
	FUNC0(FUNC4() == NULL);

	FUNC1(0, FUNC6(&err_state, 0));

	FUNC8(&err_state, 0x0, sizeof(git_error_state));

	FUNC5(42, "Foo: %s", "bar");
	FUNC1(-1, FUNC6(&err_state, -1));

	FUNC0(FUNC4() == NULL);

	FUNC5(99, "Bar: %s", "foo");

	FUNC7(&err_state);

	FUNC1(42, FUNC4()->klass);
	FUNC2("Foo: bar", FUNC4()->message);
}