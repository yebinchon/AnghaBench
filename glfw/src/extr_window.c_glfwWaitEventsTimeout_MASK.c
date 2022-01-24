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
 double DBL_MAX ; 
 int /*<<< orphan*/  GLFW_INVALID_VALUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,double) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(double timeout)
{
    FUNC0();
    FUNC3(timeout == timeout);
    FUNC3(timeout >= 0.0);
    FUNC3(timeout <= DBL_MAX);

    if (timeout != timeout || timeout < 0.0 || timeout > DBL_MAX)
    {
        FUNC1(GLFW_INVALID_VALUE, "Invalid time %f", timeout);
        return;
    }

    FUNC2(timeout);
}