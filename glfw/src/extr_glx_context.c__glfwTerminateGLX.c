
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * handle; } ;
struct TYPE_4__ {TYPE_1__ glx; } ;


 TYPE_2__ _glfw ;
 int _glfw_dlclose (int *) ;

void _glfwTerminateGLX(void)
{



    if (_glfw.glx.handle)
    {
        _glfw_dlclose(_glfw.glx.handle);
        _glfw.glx.handle = ((void*)0);
    }
}
