
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* keycodes; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;


 int GLFW_KEY_UNKNOWN ;
 TYPE_2__ _glfw ;

__attribute__((used)) static int translateKey(int scancode)
{

    if (scancode < 0 || scancode > 255)
        return GLFW_KEY_UNKNOWN;

    return _glfw.x11.keycodes[scancode];
}
