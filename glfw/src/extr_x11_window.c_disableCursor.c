
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int handle; } ;
struct TYPE_12__ {TYPE_1__ x11; scalar_t__ rawMouseMotion; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_11__ {int hiddenCursorHandle; int display; int restoreCursorPosY; int restoreCursorPosX; TYPE_3__* disabledCursorWindow; } ;
struct TYPE_13__ {TYPE_2__ x11; } ;


 int ButtonPressMask ;
 int ButtonReleaseMask ;
 int CurrentTime ;
 int GrabModeAsync ;
 int PointerMotionMask ;
 int True ;
 int XGrabPointer (int ,int ,int ,int,int ,int ,int ,int ,int ) ;
 TYPE_9__ _glfw ;
 int _glfwCenterCursorInContentArea (TYPE_3__*) ;
 int _glfwPlatformGetCursorPos (TYPE_3__*,int *,int *) ;
 int enableRawMouseMotion (TYPE_3__*) ;
 int updateCursorImage (TYPE_3__*) ;

__attribute__((used)) static void disableCursor(_GLFWwindow* window)
{
    if (window->rawMouseMotion)
        enableRawMouseMotion(window);

    _glfw.x11.disabledCursorWindow = window;
    _glfwPlatformGetCursorPos(window,
                              &_glfw.x11.restoreCursorPosX,
                              &_glfw.x11.restoreCursorPosY);
    updateCursorImage(window);
    _glfwCenterCursorInContentArea(window);
    XGrabPointer(_glfw.x11.display, window->x11.handle, True,
                 ButtonPressMask | ButtonReleaseMask | PointerMotionMask,
                 GrabModeAsync, GrabModeAsync,
                 window->x11.handle,
                 _glfw.x11.hiddenCursorHandle,
                 CurrentTime);
}
