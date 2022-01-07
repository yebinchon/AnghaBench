
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chdir; int menubar; } ;
struct TYPE_4__ {int hatButtons; TYPE_1__ ns; } ;




 int GLFW_INVALID_ENUM ;

 TYPE_2__ _glfwInitHints ;
 int _glfwInputError (int ,char*,int) ;

void glfwInitHint(int hint, int value)
{
    switch (hint)
    {
        case 128:
            _glfwInitHints.hatButtons = value;
            return;
        case 130:
            _glfwInitHints.ns.chdir = value;
            return;
        case 129:
            _glfwInitHints.ns.menubar = value;
            return;
    }

    _glfwInputError(GLFW_INVALID_ENUM,
                    "Invalid init hint 0x%08X", hint);
}
