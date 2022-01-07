
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int transparent; } ;
struct TYPE_8__ {TYPE_1__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {int NET_WM_CM_Sx; int display; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;


 int GLFW_FALSE ;
 scalar_t__ None ;
 scalar_t__ XGetSelectionOwner (int ,int ) ;
 TYPE_5__ _glfw ;

int _glfwPlatformFramebufferTransparent(_GLFWwindow* window)
{
    if (!window->x11.transparent)
        return GLFW_FALSE;

    return XGetSelectionOwner(_glfw.x11.display, _glfw.x11.NET_WM_CM_Sx) != None;
}
