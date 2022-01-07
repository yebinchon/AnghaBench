
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int initialized; } ;


 TYPE_1__ _glfw ;
 int terminate () ;

void glfwTerminate(void)
{
    if (!_glfw.initialized)
        return;

    terminate();
}
