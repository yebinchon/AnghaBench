
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _GLFW_REQUIRE_INIT () ;
 int _glfwPlatformPostEmptyEvent () ;

void glfwPostEmptyEvent(void)
{
    _GLFW_REQUIRE_INIT();
    _glfwPlatformPostEmptyEvent();
}
