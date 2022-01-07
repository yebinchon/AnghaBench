
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int contextSlot; } ;
typedef int GLFWwindow ;


 int _GLFW_REQUIRE_INIT_OR_RETURN (int *) ;
 TYPE_1__ _glfw ;
 int * _glfwPlatformGetTls (int *) ;

GLFWwindow* glfwGetCurrentContext(void)
{
    _GLFW_REQUIRE_INIT_OR_RETURN(((void*)0));
    return _glfwPlatformGetTls(&_glfw.contextSlot);
}
