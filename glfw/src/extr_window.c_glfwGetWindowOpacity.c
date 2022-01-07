
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;
typedef int GLFWwindow ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (float) ;
 float _glfwPlatformGetWindowOpacity (int *) ;
 int assert (int ) ;

float glfwGetWindowOpacity(GLFWwindow* handle)
{
    _GLFWwindow* window = (_GLFWwindow*) handle;
    assert(window != ((void*)0));

    _GLFW_REQUIRE_INIT_OR_RETURN(1.f);
    return _glfwPlatformGetWindowOpacity(window);
}
