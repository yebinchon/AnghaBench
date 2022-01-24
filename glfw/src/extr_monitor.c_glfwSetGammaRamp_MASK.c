#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  size; } ;
struct TYPE_8__ {TYPE_7__ originalRamp; } ;
typedef  TYPE_1__ _GLFWmonitor ;
struct TYPE_9__ {scalar_t__ size; int /*<<< orphan*/ * blue; int /*<<< orphan*/ * green; int /*<<< orphan*/ * red; } ;
typedef  int /*<<< orphan*/  GLFWmonitor ;
typedef  TYPE_2__ GLFWgammaramp ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_INVALID_VALUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(GLFWmonitor* handle, const GLFWgammaramp* ramp)
{
    _GLFWmonitor* monitor = (_GLFWmonitor*) handle;
    FUNC4(monitor != NULL);
    FUNC4(ramp != NULL);
    FUNC4(ramp->size > 0);
    FUNC4(ramp->red != NULL);
    FUNC4(ramp->green != NULL);
    FUNC4(ramp->blue != NULL);

    if (ramp->size <= 0)
    {
        FUNC1(GLFW_INVALID_VALUE,
                        "Invalid gamma ramp size %i",
                        ramp->size);
        return;
    }

    FUNC0();

    if (!monitor->originalRamp.size)
    {
        if (!FUNC2(monitor, &monitor->originalRamp))
            return;
    }

    FUNC3(monitor, ramp);
}