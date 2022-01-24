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
struct TYPE_9__ {int /*<<< orphan*/ * monitor; struct TYPE_9__* next; } ;
typedef  TYPE_2__ _GLFWwindow ;
typedef  int /*<<< orphan*/  _GLFWmonitor ;
struct TYPE_8__ {int /*<<< orphan*/  (* monitor ) (int /*<<< orphan*/ *,int) ;} ;
struct TYPE_10__ {int monitorCount; TYPE_1__ callbacks; int /*<<< orphan*/ ** monitors; TYPE_2__* windowListHead; } ;
typedef  int /*<<< orphan*/  GLFWmonitor ;

/* Variables and functions */
 int GLFW_CONNECTED ; 
 int GLFW_DISCONNECTED ; 
 int _GLFW_INSERT_FIRST ; 
 TYPE_7__ _glfw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,size_t) ; 
 int /*<<< orphan*/ ** FUNC6 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

void FUNC8(_GLFWmonitor* monitor, int action, int placement)
{
    if (action == GLFW_CONNECTED)
    {
        _glfw.monitorCount++;
        _glfw.monitors =
            FUNC6(_glfw.monitors, sizeof(_GLFWmonitor*) * _glfw.monitorCount);

        if (placement == _GLFW_INSERT_FIRST)
        {
            FUNC5(_glfw.monitors + 1,
                    _glfw.monitors,
                    ((size_t) _glfw.monitorCount - 1) * sizeof(_GLFWmonitor*));
            _glfw.monitors[0] = monitor;
        }
        else
            _glfw.monitors[_glfw.monitorCount - 1] = monitor;
    }
    else if (action == GLFW_DISCONNECTED)
    {
        int i;
        _GLFWwindow* window;

        for (window = _glfw.windowListHead;  window;  window = window->next)
        {
            if (window->monitor == monitor)
            {
                int width, height, xoff, yoff;
                FUNC2(window, &width, &height);
                FUNC3(window, NULL, 0, 0, width, height, 0);
                FUNC1(window, &xoff, &yoff, NULL, NULL);
                FUNC4(window, xoff, yoff);
            }
        }

        for (i = 0;  i < _glfw.monitorCount;  i++)
        {
            if (_glfw.monitors[i] == monitor)
            {
                _glfw.monitorCount--;
                FUNC5(_glfw.monitors + i,
                        _glfw.monitors + i + 1,
                        ((size_t) _glfw.monitorCount - i) * sizeof(_GLFWmonitor*));
                break;
            }
        }
    }

    if (_glfw.callbacks.monitor)
        _glfw.callbacks.monitor((GLFWmonitor*) monitor, action);

    if (action == GLFW_DISCONNECTED)
        FUNC0(monitor);
}