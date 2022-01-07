
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int height; int width; } ;
typedef TYPE_2__ _GLFWwndconfig ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_8__ {TYPE_1__ null; } ;
typedef TYPE_3__ _GLFWwindow ;


 int GLFW_TRUE ;

__attribute__((used)) static int createNativeWindow(_GLFWwindow* window,
                              const _GLFWwndconfig* wndconfig)
{
    window->null.width = wndconfig->width;
    window->null.height = wndconfig->height;

    return GLFW_TRUE;
}
