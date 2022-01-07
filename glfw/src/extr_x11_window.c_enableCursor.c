
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ rawMouseMotion; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {int restoreCursorPosY; int restoreCursorPosX; int display; int * disabledCursorWindow; } ;
struct TYPE_10__ {TYPE_1__ x11; } ;


 int CurrentTime ;
 int XUngrabPointer (int ,int ) ;
 TYPE_7__ _glfw ;
 int _glfwPlatformSetCursorPos (TYPE_2__*,int ,int ) ;
 int disableRawMouseMotion (TYPE_2__*) ;
 int updateCursorImage (TYPE_2__*) ;

__attribute__((used)) static void enableCursor(_GLFWwindow* window)
{
    if (window->rawMouseMotion)
        disableRawMouseMotion(window);

    _glfw.x11.disabledCursorWindow = ((void*)0);
    XUngrabPointer(_glfw.x11.display, CurrentTime);
    _glfwPlatformSetCursorPos(window,
                              _glfw.x11.restoreCursorPosX,
                              _glfw.x11.restoreCursorPosY);
    updateCursorImage(window);
}
