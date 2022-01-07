
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int instanceName; int className; } ;
struct TYPE_6__ {int frameName; } ;
struct TYPE_7__ {TYPE_3__ x11; TYPE_1__ ns; } ;
struct TYPE_9__ {TYPE_2__ window; } ;
struct TYPE_10__ {TYPE_4__ hints; } ;



 int GLFW_INVALID_ENUM ;


 int _GLFW_REQUIRE_INIT () ;
 TYPE_5__ _glfw ;
 int _glfwInputError (int ,char*,int) ;
 int assert (int ) ;
 int strncpy (int ,char const*,int) ;

void glfwWindowHintString(int hint, const char* value)
{
    assert(value != ((void*)0));

    _GLFW_REQUIRE_INIT();

    switch (hint)
    {
        case 130:
            strncpy(_glfw.hints.window.ns.frameName, value,
                    sizeof(_glfw.hints.window.ns.frameName) - 1);
            return;
        case 129:
            strncpy(_glfw.hints.window.x11.className, value,
                    sizeof(_glfw.hints.window.x11.className) - 1);
            return;
        case 128:
            strncpy(_glfw.hints.window.x11.instanceName, value,
                    sizeof(_glfw.hints.window.x11.instanceName) - 1);
            return;
    }

    _glfwInputError(GLFW_INVALID_ENUM, "Invalid window hint string 0x%08X", hint);
}
