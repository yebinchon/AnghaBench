
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _GLFWwindow ;
typedef int GLFWbool ;


 int _glfwPlatformGetWindowSize (int *,int*,int*) ;
 int updateNormalHints (int *,int,int) ;

void _glfwPlatformSetWindowResizable(_GLFWwindow* window, GLFWbool enabled)
{
    int width, height;
    _glfwPlatformGetWindowSize(window, &width, &height);
    updateNormalHints(window, width, height);
}
