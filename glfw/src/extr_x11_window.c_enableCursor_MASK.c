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
struct TYPE_9__ {scalar_t__ rawMouseMotion; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {int /*<<< orphan*/  restoreCursorPosY; int /*<<< orphan*/  restoreCursorPosX; int /*<<< orphan*/  display; int /*<<< orphan*/ * disabledCursorWindow; } ;
struct TYPE_10__ {TYPE_1__ x11; } ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ _glfw ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(_GLFWwindow* window)
{
    if (window->rawMouseMotion)
        FUNC2(window);

    _glfw.x11.disabledCursorWindow = NULL;
    FUNC0(_glfw.x11.display, CurrentTime);
    FUNC1(window,
                              _glfw.x11.restoreCursorPosX,
                              _glfw.x11.restoreCursorPosY);
    FUNC3(window);
}