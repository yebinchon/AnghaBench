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
struct TYPE_8__ {int /*<<< orphan*/  restoreCursorPosY; int /*<<< orphan*/  restoreCursorPosX; int /*<<< orphan*/ * disabledCursorWindow; } ;
struct TYPE_10__ {TYPE_1__ win32; } ;

/* Variables and functions */
 TYPE_7__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(_GLFWwindow* window)
{
    if (window->rawMouseMotion)
        FUNC1(window);

    _glfw.win32.disabledCursorWindow = NULL;
    FUNC2(NULL);
    FUNC0(window,
                              _glfw.win32.restoreCursorPosX,
                              _glfw.win32.restoreCursorPosY);
    FUNC3(window);
}