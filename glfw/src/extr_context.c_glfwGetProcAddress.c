
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * (* getProcAddress ) (char const*) ;} ;
struct TYPE_6__ {TYPE_1__ context; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_7__ {int contextSlot; } ;
typedef int * GLFWglproc ;


 int GLFW_NO_CURRENT_CONTEXT ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_4__ _glfw ;
 int _glfwInputError (int ,char*) ;
 TYPE_2__* _glfwPlatformGetTls (int *) ;
 int assert (int ) ;
 int * stub1 (char const*) ;

GLFWglproc glfwGetProcAddress(const char* procname)
{
    _GLFWwindow* window;
    assert(procname != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));

    window = _glfwPlatformGetTls(&_glfw.contextSlot);
    if (!window)
    {
        _glfwInputError(GLFW_NO_CURRENT_CONTEXT,
                        "Cannot query entry point without a current OpenGL or OpenGL ES context");
        return ((void*)0);
    }

    return window->context.getProcAddress(procname);
}
