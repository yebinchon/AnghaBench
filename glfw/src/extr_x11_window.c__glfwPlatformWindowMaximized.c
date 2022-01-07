
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int handle; } ;
struct TYPE_8__ {TYPE_1__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {scalar_t__ NET_WM_STATE_MAXIMIZED_VERT; scalar_t__ NET_WM_STATE_MAXIMIZED_HORZ; int NET_WM_STATE; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;
typedef int GLFWbool ;
typedef scalar_t__ Atom ;


 int GLFW_FALSE ;
 int GLFW_TRUE ;
 int XA_ATOM ;
 int XFree (scalar_t__*) ;
 TYPE_5__ _glfw ;
 unsigned long _glfwGetWindowPropertyX11 (int ,int ,int ,unsigned char**) ;

int _glfwPlatformWindowMaximized(_GLFWwindow* window)
{
    Atom* states;
    unsigned long i;
    GLFWbool maximized = GLFW_FALSE;

    if (!_glfw.x11.NET_WM_STATE ||
        !_glfw.x11.NET_WM_STATE_MAXIMIZED_VERT ||
        !_glfw.x11.NET_WM_STATE_MAXIMIZED_HORZ)
    {
        return maximized;
    }

    const unsigned long count =
        _glfwGetWindowPropertyX11(window->x11.handle,
                                  _glfw.x11.NET_WM_STATE,
                                  XA_ATOM,
                                  (unsigned char**) &states);

    for (i = 0; i < count; i++)
    {
        if (states[i] == _glfw.x11.NET_WM_STATE_MAXIMIZED_VERT ||
            states[i] == _glfw.x11.NET_WM_STATE_MAXIMIZED_HORZ)
        {
            maximized = GLFW_TRUE;
            break;
        }
    }

    if (states)
        XFree(states);

    return maximized;
}
