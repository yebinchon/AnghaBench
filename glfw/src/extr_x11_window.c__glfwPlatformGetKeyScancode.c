
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* scancodes; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 TYPE_2__ _glfw ;

int _glfwPlatformGetKeyScancode(int key)
{
    return _glfw.x11.scancodes[key];
}
