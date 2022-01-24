#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ helperWindowHandle; int /*<<< orphan*/  PRIMARY; int /*<<< orphan*/  display; int /*<<< orphan*/  primarySelectionString; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  GLFW_PLATFORM_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__ _glfw ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(const char* string)
{
    FUNC2();

    FUNC5(_glfw.x11.primarySelectionString);
    _glfw.x11.primarySelectionString = FUNC4(string);

    FUNC1(_glfw.x11.display,
                       _glfw.x11.PRIMARY,
                       _glfw.x11.helperWindowHandle,
                       CurrentTime);

    if (FUNC0(_glfw.x11.display, _glfw.x11.PRIMARY) !=
        _glfw.x11.helperWindowHandle)
    {
        FUNC3(GLFW_PLATFORM_ERROR,
                        "X11: Failed to become owner of primary selection");
    }
}