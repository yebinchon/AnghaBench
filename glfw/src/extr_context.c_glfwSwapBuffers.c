
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ client; int (* swapBuffers ) (TYPE_2__*) ;} ;
struct TYPE_5__ {TYPE_1__ context; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int GLFWwindow ;


 scalar_t__ GLFW_NO_API ;
 int GLFW_NO_WINDOW_CONTEXT ;
 int _GLFW_REQUIRE_INIT () ;
 int _glfwInputError (int ,char*) ;
 int assert (int ) ;
 int stub1 (TYPE_2__*) ;

void glfwSwapBuffers(GLFWwindow* handle)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    assert(window != ((void*)0));

    _GLFW_REQUIRE_INIT();

    if (window->context.client == GLFW_NO_API)
    {
        _glfwInputError(GLFW_NO_WINDOW_CONTEXT,
                        "Cannot swap buffers of a window that has no OpenGL or OpenGL ES context");
        return;
    }

    window->context.swapBuffers(window);
}
