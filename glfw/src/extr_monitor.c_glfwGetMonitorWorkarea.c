
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWmonitor ;
typedef int GLFWmonitor ;


 int _GLFW_REQUIRE_INIT () ;
 int _glfwPlatformGetMonitorWorkarea (int *,int*,int*,int*,int*) ;
 int assert (int ) ;

void glfwGetMonitorWorkarea(GLFWmonitor* handle,
                                    int* xpos, int* ypos,
                                    int* width, int* height)
{
    _GLFWmonitor* monitor = (_GLFWmonitor*) handle;
    assert(monitor != ((void*)0));

    if (xpos)
        *xpos = 0;
    if (ypos)
        *ypos = 0;
    if (width)
        *width = 0;
    if (height)
        *height = 0;

    _GLFW_REQUIRE_INIT();

    _glfwPlatformGetMonitorWorkarea(monitor, xpos, ypos, width, height);
}
