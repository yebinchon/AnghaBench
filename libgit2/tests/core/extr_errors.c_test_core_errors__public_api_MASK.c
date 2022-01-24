#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ klass; int /*<<< orphan*/  message; } ;

/* Variables and functions */
 scalar_t__ GIT_ERROR_NOMEMORY ; 
 int /*<<< orphan*/  GIT_ERROR_REPOSITORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 

void FUNC6(void)
{
	char *str_in_error;

	FUNC1();
	FUNC0(FUNC2() == NULL);

	FUNC3();

	FUNC0(FUNC2() != NULL);
	FUNC0(FUNC2()->klass == GIT_ERROR_NOMEMORY);
	str_in_error = FUNC5(FUNC2()->message, "memory");
	FUNC0(str_in_error != NULL);

	FUNC1();

	FUNC4(GIT_ERROR_REPOSITORY, "This is a test");

	FUNC0(FUNC2() != NULL);
	str_in_error = FUNC5(FUNC2()->message, "This is a test");
	FUNC0(str_in_error != NULL);

	FUNC1();
	FUNC0(FUNC2() == NULL);
}