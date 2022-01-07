
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int monitor; } ;
typedef TYPE_1__ _GLFWwindow ;
typedef scalar_t__ GLFWbool ;


 int createDecorations (TYPE_1__*) ;
 int destroyDecorations (TYPE_1__*) ;

void _glfwPlatformSetWindowDecorated(_GLFWwindow* window, GLFWbool enabled)
{
    if (!window->monitor)
    {
        if (enabled)
            createDecorations(window);
        else
            destroyDecorations(window);
    }
}
