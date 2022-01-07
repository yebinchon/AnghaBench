
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
struct TYPE_7__ {int NET_WM_WINDOW_OPACITY; int NET_WM_CM_Sx; int display; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;
typedef double CARD32 ;


 int XA_CARDINAL ;
 int XFree (double*) ;
 scalar_t__ XGetSelectionOwner (int ,int ) ;
 TYPE_5__ _glfw ;
 scalar_t__ _glfwGetWindowPropertyX11 (int ,int ,int ,unsigned char**) ;

float _glfwPlatformGetWindowOpacity(_GLFWwindow* window)
{
    float opacity = 1.f;

    if (XGetSelectionOwner(_glfw.x11.display, _glfw.x11.NET_WM_CM_Sx))
    {
        CARD32* value = ((void*)0);

        if (_glfwGetWindowPropertyX11(window->x11.handle,
                                      _glfw.x11.NET_WM_WINDOW_OPACITY,
                                      XA_CARDINAL,
                                      (unsigned char**) &value))
        {
            opacity = (float) (*value / (double) 0xffffffffu);
        }

        if (value)
            XFree(value);
    }

    return opacity;
}
