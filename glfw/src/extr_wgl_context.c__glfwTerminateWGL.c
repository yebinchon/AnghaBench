
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ instance; } ;
struct TYPE_4__ {TYPE_1__ wgl; } ;


 int FreeLibrary (scalar_t__) ;
 TYPE_2__ _glfw ;

void _glfwTerminateWGL(void)
{
    if (_glfw.wgl.instance)
        FreeLibrary(_glfw.wgl.instance);
}
