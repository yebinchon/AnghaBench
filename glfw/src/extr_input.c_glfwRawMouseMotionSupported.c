
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_FALSE ;
 int _GLFW_REQUIRE_INIT_OR_RETURN (int ) ;
 int _glfwPlatformRawMouseMotionSupported () ;

int glfwRawMouseMotionSupported(void)
{
    _GLFW_REQUIRE_INIT_OR_RETURN(GLFW_FALSE);
    return _glfwPlatformRawMouseMotionSupported();
}
