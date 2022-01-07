
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const currentRamp; } ;
typedef TYPE_1__ _GLFWmonitor ;
typedef int GLFWmonitor ;
typedef int GLFWgammaramp ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 int _glfwFreeGammaArrays (int const*) ;
 int _glfwPlatformGetGammaRamp (TYPE_1__*,int const*) ;
 int assert (int ) ;

const GLFWgammaramp* glfwGetGammaRamp(GLFWmonitor* handle)
{
    _GLFWmonitor* monitor = (_GLFWmonitor*) handle;
    assert(monitor != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    _glfwFreeGammaArrays(&monitor->currentRamp);
    if (!_glfwPlatformGetGammaRamp(monitor, &monitor->currentRamp))
        return ((void*)0);

    return &monitor->currentRamp;
}
