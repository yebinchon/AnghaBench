
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cursor; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef int _GLFWcursor ;
typedef int GLFWwindow ;
typedef int GLFWcursor ;


 int _GLFW_REQUIRE_INIT () ;
 int _glfwPlatformSetCursor (TYPE_1__*,int *) ;
 int assert (int ) ;

void glfwSetCursor(GLFWwindow* windowHandle, GLFWcursor* cursorHandle)
{
    _GLFWwindow* window = (_GLFWwindow*) windowHandle;
    _GLFWcursor* cursor = (_GLFWcursor*) cursorHandle;
    assert(window != ((void*)0));

    _GLFW_REQUIRE_INIT();

    window->cursor = cursor;

    _glfwPlatformSetCursor(window, cursor);
}
