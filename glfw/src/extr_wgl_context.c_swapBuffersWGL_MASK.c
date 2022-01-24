#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dc; int /*<<< orphan*/  interval; } ;
struct TYPE_6__ {TYPE_1__ wgl; } ;
struct TYPE_7__ {TYPE_2__ context; int /*<<< orphan*/  monitor; } ;
typedef  TYPE_3__ _GLFWwindow ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(_GLFWwindow* window)
{
    if (!window->monitor)
    {
        if (FUNC3())
        {
            // DWM Composition is always enabled on Win8+
            BOOL enabled = FUNC2();

            // HACK: Use DwmFlush when desktop composition is enabled
            if (enabled ||
                (FUNC4(FUNC1(&enabled)) && enabled))
            {
                int count = FUNC6(window->context.wgl.interval);
                while (count--)
                    FUNC0();
            }
        }
    }

    FUNC5(window->context.wgl.dc);
}