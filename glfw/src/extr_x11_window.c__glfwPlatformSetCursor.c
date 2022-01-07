
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cursorMode; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int _GLFWcursor ;
struct TYPE_6__ {int display; } ;
struct TYPE_8__ {TYPE_1__ x11; } ;


 scalar_t__ GLFW_CURSOR_NORMAL ;
 int XFlush (int ) ;
 TYPE_5__ _glfw ;
 int updateCursorImage (TYPE_2__*) ;

void _glfwPlatformSetCursor(_GLFWwindow* window, _GLFWcursor* cursor)
{
    if (window->cursorMode == GLFW_CURSOR_NORMAL)
    {
        updateCursorImage(window);
        XFlush(_glfw.x11.display);
    }
}
