
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int _GLFWwindow ;
struct TYPE_4__ {int available; } ;
struct TYPE_5__ {int * disabledCursorWindow; TYPE_1__ xi; } ;
struct TYPE_6__ {TYPE_2__ x11; } ;
typedef scalar_t__ GLFWbool ;


 TYPE_3__ _glfw ;
 int disableRawMouseMotion (int *) ;
 int enableRawMouseMotion (int *) ;

void _glfwPlatformSetRawMouseMotion(_GLFWwindow *window, GLFWbool enabled)
{
    if (!_glfw.x11.xi.available)
        return;

    if (_glfw.x11.disabledCursorWindow != window)
        return;

    if (enabled)
        enableRawMouseMotion(window);
    else
        disableRawMouseMotion(window);
}
