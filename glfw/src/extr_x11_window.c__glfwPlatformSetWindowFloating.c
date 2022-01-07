
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int handle; } ;
struct TYPE_10__ {TYPE_1__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_9__ {scalar_t__ NET_WM_STATE_ABOVE; int display; int NET_WM_STATE; } ;
struct TYPE_11__ {TYPE_2__ x11; } ;
typedef scalar_t__ GLFWbool ;
typedef scalar_t__ Atom ;


 int PropModeAppend ;
 int PropModeReplace ;
 int XA_ATOM ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,unsigned long) ;
 int XFlush (int ) ;
 int XFree (scalar_t__*) ;
 scalar_t__ _NET_WM_STATE_ADD ;
 scalar_t__ _NET_WM_STATE_REMOVE ;
 TYPE_7__ _glfw ;
 unsigned long _glfwGetWindowPropertyX11 (int ,int ,int ,unsigned char**) ;
 scalar_t__ _glfwPlatformWindowVisible (TYPE_3__*) ;
 int sendEventToWM (TYPE_3__*,int ,scalar_t__ const,scalar_t__,int ,int,int ) ;

void _glfwPlatformSetWindowFloating(_GLFWwindow* window, GLFWbool enabled)
{
    if (!_glfw.x11.NET_WM_STATE || !_glfw.x11.NET_WM_STATE_ABOVE)
        return;

    if (_glfwPlatformWindowVisible(window))
    {
        const Atom action = enabled ? _NET_WM_STATE_ADD : _NET_WM_STATE_REMOVE;
        sendEventToWM(window,
                      _glfw.x11.NET_WM_STATE,
                      action,
                      _glfw.x11.NET_WM_STATE_ABOVE,
                      0, 1, 0);
    }
    else
    {
        Atom* states;
        unsigned long i, count;

        count = _glfwGetWindowPropertyX11(window->x11.handle,
                                          _glfw.x11.NET_WM_STATE,
                                          XA_ATOM,
                                          (unsigned char**) &states);
        if (!states)
            return;

        if (enabled)
        {
            for (i = 0; i < count; i++)
            {
                if (states[i] == _glfw.x11.NET_WM_STATE_ABOVE)
                    break;
            }

            if (i == count)
            {
                XChangeProperty(_glfw.x11.display, window->x11.handle,
                                _glfw.x11.NET_WM_STATE, XA_ATOM, 32,
                                PropModeAppend,
                                (unsigned char*) &_glfw.x11.NET_WM_STATE_ABOVE,
                                1);
            }
        }
        else
        {
            for (i = 0; i < count; i++)
            {
                if (states[i] == _glfw.x11.NET_WM_STATE_ABOVE)
                {
                    states[i] = states[count - 1];
                    count--;
                }
            }

            XChangeProperty(_glfw.x11.display, window->x11.handle,
                            _glfw.x11.NET_WM_STATE, XA_ATOM, 32,
                            PropModeReplace, (unsigned char*) &states, count);
        }

        XFree(states);
    }

    XFlush(_glfw.x11.display);
}
