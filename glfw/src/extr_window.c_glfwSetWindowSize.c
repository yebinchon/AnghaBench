
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; int height; } ;
struct TYPE_5__ {TYPE_1__ videoMode; } ;
typedef TYPE_2__ _GLFWwindow ;
typedef int GLFWwindow ;


 int _GLFW_REQUIRE_INIT () ;
 int _glfwPlatformSetWindowSize (TYPE_2__*,int,int) ;
 int assert (int) ;

void glfwSetWindowSize(GLFWwindow* handle, int width, int height)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    assert(window != ((void*)0));
    assert(width >= 0);
    assert(height >= 0);

    _GLFW_REQUIRE_INIT();

    window->videoMode.width = width;
    window->videoMode.height = height;

    _glfwPlatformSetWindowSize(window, width, height);
}
