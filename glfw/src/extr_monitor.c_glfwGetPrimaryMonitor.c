
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* monitors; int monitorCount; } ;
typedef int GLFWmonitor ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_1__ _glfw ;

GLFWmonitor* glfwGetPrimaryMonitor(void)
{
    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    if (!_glfw.monitorCount)
        return ((void*)0);

    return (GLFWmonitor*) _glfw.monitors[0];
}
