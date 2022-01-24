#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 

int
FUNC6(void)
{
    FUNC1("%d\n", FUNC5() != NULL);
    FUNC1("%d\n", FUNC3() > 0);
    FUNC1("%d\n", FUNC4() >= 0);
#ifdef SODIUM_LIBRARY_MINIMAL
    assert(sodium_library_minimal() == 1);
#else
    FUNC0(FUNC2() == 0);
#endif

    return 0;
}