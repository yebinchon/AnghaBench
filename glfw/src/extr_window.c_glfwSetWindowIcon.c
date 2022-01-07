
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;
typedef int GLFWwindow ;
typedef int GLFWimage ;


 int _GLFW_REQUIRE_INIT () ;
 int _glfwPlatformSetWindowIcon (int *,int,int const*) ;
 int assert (int) ;

void glfwSetWindowIcon(GLFWwindow* handle,
                               int count, const GLFWimage* images)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    assert(window != ((void*)0));
    assert(count >= 0);
    assert(count == 0 || images != ((void*)0));

    _GLFW_REQUIRE_INIT();
    _glfwPlatformSetWindowIcon(window, count, images);
}
