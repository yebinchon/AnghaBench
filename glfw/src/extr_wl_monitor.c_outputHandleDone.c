
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_output {int dummy; } ;
struct _GLFWmonitor {int dummy; } ;


 int GLFW_CONNECTED ;
 int _GLFW_INSERT_LAST ;
 int _glfwInputMonitor (struct _GLFWmonitor*,int ,int ) ;

__attribute__((used)) static void outputHandleDone(void* data, struct wl_output* output)
{
    struct _GLFWmonitor *monitor = data;

    _glfwInputMonitor(monitor, GLFW_CONNECTED, _GLFW_INSERT_LAST);
}
