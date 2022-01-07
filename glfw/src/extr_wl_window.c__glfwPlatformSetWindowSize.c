
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width; int height; } ;
struct TYPE_6__ {TYPE_1__ wl; } ;
typedef TYPE_2__ _GLFWwindow ;


 int resizeWindow (TYPE_2__*) ;

void _glfwPlatformSetWindowSize(_GLFWwindow* window, int width, int height)
{
    window->wl.width = width;
    window->wl.height = height;
    resizeWindow(window);
}
