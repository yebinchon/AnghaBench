
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdg_toplevel {int dummy; } ;
typedef int _GLFWwindow ;


 int _glfwInputWindowCloseRequest (int *) ;

__attribute__((used)) static void xdgToplevelHandleClose(void* data,
                                   struct xdg_toplevel* toplevel)
{
    _GLFWwindow* window = data;
    _glfwInputWindowCloseRequest(window);
}
