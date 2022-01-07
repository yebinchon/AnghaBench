
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* name; struct TYPE_5__* modes; int currentRamp; int originalRamp; } ;
typedef TYPE_1__ _GLFWmonitor ;


 int _glfwFreeGammaArrays (int *) ;
 int _glfwPlatformFreeMonitor (TYPE_1__*) ;
 int free (TYPE_1__*) ;

void _glfwFreeMonitor(_GLFWmonitor* monitor)
{
    if (monitor == ((void*)0))
        return;

    _glfwPlatformFreeMonitor(monitor);

    _glfwFreeGammaArrays(&monitor->originalRamp);
    _glfwFreeGammaArrays(&monitor->currentRamp);

    free(monitor->modes);
    free(monitor->name);
    free(monitor);
}
