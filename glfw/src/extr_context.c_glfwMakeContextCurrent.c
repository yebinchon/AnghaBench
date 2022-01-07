
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ client; scalar_t__ source; int (* makeCurrent ) (TYPE_2__*) ;} ;
struct TYPE_8__ {TYPE_1__ context; } ;
typedef TYPE_2__ _GLFWwindow ;
struct TYPE_9__ {int contextSlot; } ;
typedef int GLFWwindow ;


 scalar_t__ GLFW_NO_API ;
 int GLFW_NO_WINDOW_CONTEXT ;
 int _GLFW_REQUIRE_INIT () ;
 TYPE_6__ _glfw ;
 int _glfwInputError (int ,char*) ;
 TYPE_2__* _glfwPlatformGetTls (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

void glfwMakeContextCurrent(GLFWwindow* handle)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    _GLFWwindow* previous = _glfwPlatformGetTls(&_glfw.contextSlot);

    _GLFW_REQUIRE_INIT();

    if (window && window->context.client == GLFW_NO_API)
    {
        _glfwInputError(GLFW_NO_WINDOW_CONTEXT,
                        "Cannot make current with a window that has no OpenGL or OpenGL ES context");
        return;
    }

    if (previous)
    {
        if (!window || window->context.source != previous->context.source)
            previous->context.makeCurrent(((void*)0));
    }

    if (window)
        window->context.makeCurrent(window);
}
