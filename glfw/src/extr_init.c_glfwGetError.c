
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int code; char* description; } ;
typedef TYPE_1__ _GLFWerror ;
struct TYPE_6__ {int errorSlot; scalar_t__ initialized; } ;


 void* GLFW_NO_ERROR ;
 TYPE_4__ _glfw ;
 TYPE_1__ _glfwMainThreadError ;
 TYPE_1__* _glfwPlatformGetTls (int *) ;

int glfwGetError(const char** description)
{
    _GLFWerror* error;
    int code = GLFW_NO_ERROR;

    if (description)
        *description = ((void*)0);

    if (_glfw.initialized)
        error = _glfwPlatformGetTls(&_glfw.errorSlot);
    else
        error = &_glfwMainThreadError;

    if (error)
    {
        code = error->code;
        error->code = GLFW_NO_ERROR;
        if (description && code)
            *description = error->description;
    }

    return code;
}
