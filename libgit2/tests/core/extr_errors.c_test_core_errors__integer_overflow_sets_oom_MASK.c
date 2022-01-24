#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  message; int /*<<< orphan*/  klass; } ;

/* Variables and functions */
 int FUNC0 (size_t*,int,int) ; 
 int /*<<< orphan*/  GIT_ERROR_NOMEMORY ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 () ; 

void FUNC7(void)
{
	size_t out;

	FUNC5();
	FUNC1(!FUNC0(&out, SIZE_MAX-1, 1));
	FUNC3(NULL, FUNC6());

	FUNC5();
	FUNC1(!FUNC0(&out, 42, 69));
	FUNC3(NULL, FUNC6());

	FUNC5();
	FUNC1(FUNC0(&out, SIZE_MAX, SIZE_MAX));
	FUNC2(GIT_ERROR_NOMEMORY, FUNC6()->klass);
	FUNC4("Out of memory", FUNC6()->message);

	FUNC5();
	FUNC1(FUNC0(&out, SIZE_MAX, SIZE_MAX));
	FUNC2(GIT_ERROR_NOMEMORY, FUNC6()->klass);
	FUNC4("Out of memory", FUNC6()->message);
}