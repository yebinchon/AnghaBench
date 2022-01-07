
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int size; } ;
struct TYPE_8__ {TYPE_7__ originalRamp; } ;
typedef TYPE_1__ _GLFWmonitor ;
struct TYPE_9__ {scalar_t__ size; int * blue; int * green; int * red; } ;
typedef int GLFWmonitor ;
typedef TYPE_2__ GLFWgammaramp ;


 int GLFW_INVALID_VALUE ;
 int _GLFW_REQUIRE_INIT () ;
 int _glfwInputError (int ,char*,scalar_t__) ;
 int _glfwPlatformGetGammaRamp (TYPE_1__*,TYPE_7__*) ;
 int _glfwPlatformSetGammaRamp (TYPE_1__*,TYPE_2__ const*) ;
 int assert (int) ;

void glfwSetGammaRamp(GLFWmonitor* handle, const GLFWgammaramp* ramp)
{
    _GLFWmonitor* monitor = (_GLFWmonitor*) handle;
    assert(monitor != ((void*)0));
    assert(ramp != ((void*)0));
    assert(ramp->size > 0);
    assert(ramp->red != ((void*)0));
    assert(ramp->green != ((void*)0));
    assert(ramp->blue != ((void*)0));

    if (ramp->size <= 0)
    {
        _glfwInputError(GLFW_INVALID_VALUE,
                        "Invalid gamma ramp size %i",
                        ramp->size);
        return;
    }

    _GLFW_REQUIRE_INIT();

    if (!monitor->originalRamp.size)
    {
        if (!_glfwPlatformGetGammaRamp(monitor, &monitor->originalRamp))
            return;
    }

    _glfwPlatformSetGammaRamp(monitor, ramp);
}
