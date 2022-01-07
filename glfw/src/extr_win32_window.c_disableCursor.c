
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ rawMouseMotion; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_10__ {int restoreCursorPosY; int restoreCursorPosX; TYPE_2__* disabledCursorWindow; } ;
struct TYPE_12__ {TYPE_1__ win32; } ;


 TYPE_9__ _glfw ;
 int _glfwCenterCursorInContentArea (TYPE_2__*) ;
 int _glfwPlatformGetCursorPos (TYPE_2__*,int *,int *) ;
 int enableRawMouseMotion (TYPE_2__*) ;
 int updateClipRect (TYPE_2__*) ;
 int updateCursorImage (TYPE_2__*) ;

__attribute__((used)) static void disableCursor(_GLFWwindow* window)
{
    _glfw.win32.disabledCursorWindow = window;
    _glfwPlatformGetCursorPos(window,
                              &_glfw.win32.restoreCursorPosX,
                              &_glfw.win32.restoreCursorPosY);
    updateCursorImage(window);
    _glfwCenterCursorInContentArea(window);
    updateClipRect(window);

    if (window->rawMouseMotion)
        enableRawMouseMotion(window);
}
