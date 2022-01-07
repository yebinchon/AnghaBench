
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ rawMouseMotion; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_8__ {int restoreCursorPosY; int restoreCursorPosX; int * disabledCursorWindow; } ;
struct TYPE_10__ {TYPE_1__ win32; } ;


 TYPE_7__ _glfw ;
 int _glfwPlatformSetCursorPos (TYPE_2__*,int ,int ) ;
 int disableRawMouseMotion (TYPE_2__*) ;
 int updateClipRect (int *) ;
 int updateCursorImage (TYPE_2__*) ;

__attribute__((used)) static void enableCursor(_GLFWwindow* window)
{
    if (window->rawMouseMotion)
        disableRawMouseMotion(window);

    _glfw.win32.disabledCursorWindow = ((void*)0);
    updateClipRect(((void*)0));
    _glfwPlatformSetCursorPos(window,
                              _glfw.win32.restoreCursorPosX,
                              _glfw.win32.restoreCursorPosY);
    updateCursorImage(window);
}
