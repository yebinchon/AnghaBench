
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int handle; } ;
struct TYPE_12__ {scalar_t__ cursorMode; TYPE_1__ x11; TYPE_3__* cursor; } ;
typedef TYPE_5__ _GLFWwindow ;
struct TYPE_11__ {int hiddenCursorHandle; int display; } ;
struct TYPE_13__ {TYPE_4__ x11; } ;
struct TYPE_9__ {int handle; } ;
struct TYPE_10__ {TYPE_2__ x11; } ;


 scalar_t__ GLFW_CURSOR_NORMAL ;
 int XDefineCursor (int ,int ,int ) ;
 int XUndefineCursor (int ,int ) ;
 TYPE_7__ _glfw ;

__attribute__((used)) static void updateCursorImage(_GLFWwindow* window)
{
    if (window->cursorMode == GLFW_CURSOR_NORMAL)
    {
        if (window->cursor)
        {
            XDefineCursor(_glfw.x11.display, window->x11.handle,
                          window->cursor->x11.handle);
        }
        else
            XUndefineCursor(_glfw.x11.display, window->x11.handle);
    }
    else
    {
        XDefineCursor(_glfw.x11.display, window->x11.handle,
                      _glfw.x11.hiddenCursorHandle);
    }
}
