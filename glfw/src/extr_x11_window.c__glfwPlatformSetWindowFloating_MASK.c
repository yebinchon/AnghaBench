#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  handle; } ;
struct TYPE_10__ {TYPE_1__ x11; } ;
typedef  TYPE_3__ _GLFWwindow ;
struct TYPE_9__ {scalar_t__ NET_WM_STATE_ABOVE; int /*<<< orphan*/  display; int /*<<< orphan*/  NET_WM_STATE; } ;
struct TYPE_11__ {TYPE_2__ x11; } ;
typedef  scalar_t__ GLFWbool ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  PropModeAppend ; 
 int /*<<< orphan*/  PropModeReplace ; 
 int /*<<< orphan*/  XA_ATOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ _NET_WM_STATE_ADD ; 
 scalar_t__ _NET_WM_STATE_REMOVE ; 
 TYPE_7__ _glfw ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char**) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__ const,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC6(_GLFWwindow* window, GLFWbool enabled)
{
    if (!_glfw.x11.NET_WM_STATE || !_glfw.x11.NET_WM_STATE_ABOVE)
        return;

    if (FUNC4(window))
    {
        const Atom action = enabled ? _NET_WM_STATE_ADD : _NET_WM_STATE_REMOVE;
        FUNC5(window,
                      _glfw.x11.NET_WM_STATE,
                      action,
                      _glfw.x11.NET_WM_STATE_ABOVE,
                      0, 1, 0);
    }
    else
    {
        Atom* states;
        unsigned long i, count;

        count = FUNC3(window->x11.handle,
                                          _glfw.x11.NET_WM_STATE,
                                          XA_ATOM,
                                          (unsigned char**) &states);
        if (!states)
            return;

        if (enabled)
        {
            for (i = 0;  i < count;  i++)
            {
                if (states[i] == _glfw.x11.NET_WM_STATE_ABOVE)
                    break;
            }

            if (i == count)
            {
                FUNC0(_glfw.x11.display, window->x11.handle,
                                _glfw.x11.NET_WM_STATE, XA_ATOM, 32,
                                PropModeAppend,
                                (unsigned char*) &_glfw.x11.NET_WM_STATE_ABOVE,
                                1);
            }
        }
        else
        {
            for (i = 0;  i < count;  i++)
            {
                if (states[i] == _glfw.x11.NET_WM_STATE_ABOVE)
                {
                    states[i] = states[count - 1];
                    count--;
                }
            }

            FUNC0(_glfw.x11.display, window->x11.handle,
                            _glfw.x11.NET_WM_STATE, XA_ATOM, 32,
                            PropModeReplace, (unsigned char*) &states, count);
        }

        FUNC2(states);
    }

    FUNC1(_glfw.x11.display);
}