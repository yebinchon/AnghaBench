
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ handle; } ;
struct TYPE_4__ {TYPE_1__ vk; } ;


 TYPE_2__ _glfw ;
 int _glfw_dlclose (scalar_t__) ;

void _glfwTerminateVulkan(void)
{

    if (_glfw.vk.handle)
        _glfw_dlclose(_glfw.vk.handle);

}
