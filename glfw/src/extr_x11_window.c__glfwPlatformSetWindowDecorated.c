
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hints ;
struct TYPE_6__ {int handle; } ;
struct TYPE_8__ {TYPE_1__ x11; } ;
typedef TYPE_3__ _GLFWwindow ;
struct TYPE_7__ {int MOTIF_WM_HINTS; int display; } ;
struct TYPE_9__ {TYPE_2__ x11; } ;
typedef scalar_t__ GLFWbool ;


 unsigned long MWM_DECOR_ALL ;
 unsigned long MWM_HINTS_DECORATIONS ;
 int PropModeReplace ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,int) ;
 TYPE_5__ _glfw ;

void _glfwPlatformSetWindowDecorated(_GLFWwindow* window, GLFWbool enabled)
{
    struct
    {
        unsigned long flags;
        unsigned long functions;
        unsigned long decorations;
        long input_mode;
        unsigned long status;
    } hints = {0};

    hints.flags = MWM_HINTS_DECORATIONS;
    hints.decorations = enabled ? MWM_DECOR_ALL : 0;

    XChangeProperty(_glfw.x11.display, window->x11.handle,
                    _glfw.x11.MOTIF_WM_HINTS,
                    _glfw.x11.MOTIF_WM_HINTS, 32,
                    PropModeReplace,
                    (unsigned char*) &hints,
                    sizeof(hints) / sizeof(long));
}
