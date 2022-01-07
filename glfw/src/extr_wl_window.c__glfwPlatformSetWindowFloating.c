
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;
typedef int GLFWbool ;


 int GLFW_PLATFORM_ERROR ;
 int _glfwInputError (int ,char*) ;

void _glfwPlatformSetWindowFloating(_GLFWwindow* window, GLFWbool enabled)
{

    _glfwInputError(GLFW_PLATFORM_ERROR,
                    "Wayland: Window attribute setting not implemented yet");
}
