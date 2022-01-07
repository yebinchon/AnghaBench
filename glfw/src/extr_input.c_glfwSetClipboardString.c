
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLFWwindow ;


 int _GLFW_REQUIRE_INIT () ;
 int _glfwPlatformSetClipboardString (char const*) ;
 int assert (int ) ;

void glfwSetClipboardString(GLFWwindow* handle, const char* string)
{
    assert(string != ((void*)0));

    _GLFW_REQUIRE_INIT();
    _glfwPlatformSetClipboardString(string);
}
