
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int handle; } ;
struct TYPE_8__ {TYPE_2__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
typedef int XEvent ;
struct TYPE_6__ {int display; } ;
struct TYPE_9__ {TYPE_1__ x11; } ;
typedef int GLFWbool ;


 int GLFW_FALSE ;
 int GLFW_TRUE ;
 int VisibilityNotify ;
 int XCheckTypedWindowEvent (int ,int ,int ,int *) ;
 TYPE_5__ _glfw ;
 int waitForEvent (double*) ;

__attribute__((used)) static GLFWbool waitForVisibilityNotify(_GLFWwindow* window)
{
    XEvent dummy;
    double timeout = 0.1;

    while (!XCheckTypedWindowEvent(_glfw.x11.display,
                                   window->x11.handle,
                                   VisibilityNotify,
                                   &dummy))
    {
        if (!waitForEvent(&timeout))
            return GLFW_FALSE;
    }

    return GLFW_TRUE;
}
