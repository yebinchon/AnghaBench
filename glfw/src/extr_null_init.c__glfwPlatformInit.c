
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_TRUE ;
 int _glfwInitTimerPOSIX () ;

int _glfwPlatformInit(void)
{
    _glfwInitTimerPOSIX();
    return GLFW_TRUE;
}
