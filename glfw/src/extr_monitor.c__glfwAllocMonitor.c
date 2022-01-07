
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int widthMM; int heightMM; int name; } ;
typedef TYPE_1__ _GLFWmonitor ;


 int _glfw_strdup (char const*) ;
 TYPE_1__* calloc (int,int) ;

_GLFWmonitor* _glfwAllocMonitor(const char* name, int widthMM, int heightMM)
{
    _GLFWmonitor* monitor = calloc(1, sizeof(_GLFWmonitor));
    monitor->widthMM = widthMM;
    monitor->heightMM = heightMM;

    if (name)
        monitor->name = _glfw_strdup(name);

    return monitor;
}
