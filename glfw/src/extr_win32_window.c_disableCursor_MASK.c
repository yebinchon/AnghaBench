#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ rawMouseMotion; } ;
typedef  TYPE_2__ _GLFWwindow ;
struct TYPE_10__ {int /*<<< orphan*/  restoreCursorPosY; int /*<<< orphan*/  restoreCursorPosX; TYPE_2__* disabledCursorWindow; } ;
struct TYPE_12__ {TYPE_1__ win32; } ;

/* Variables and functions */
 TYPE_9__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(_GLFWwindow* window)
{
    _glfw.win32.disabledCursorWindow = window;
    FUNC1(window,
                              &_glfw.win32.restoreCursorPosX,
                              &_glfw.win32.restoreCursorPosY);
    FUNC4(window);
    FUNC0(window);
    FUNC3(window);

    if (window->rawMouseMotion)
        FUNC2(window);
}