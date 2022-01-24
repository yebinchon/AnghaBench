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
struct TYPE_2__ {int /*<<< orphan*/  message; int /*<<< orphan*/  klass; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_NOMEMORY ; 
 int SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

void FUNC7(void)
{
	FUNC3(FUNC5(10, 10));
	FUNC3(FUNC5(1000, 1000));
	FUNC3(FUNC5(SIZE_MAX-10, 10));

	FUNC2(FUNC6(SIZE_MAX-1, 2));
	FUNC2(FUNC6(SIZE_MAX, SIZE_MAX));

	FUNC0(GIT_ERROR_NOMEMORY, FUNC4()->klass);
	FUNC1("Out of memory", FUNC4()->message);
}