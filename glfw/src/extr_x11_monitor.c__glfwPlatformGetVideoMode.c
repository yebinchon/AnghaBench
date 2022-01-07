
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_16__ {int crtc; } ;
struct TYPE_18__ {TYPE_2__ x11; } ;
typedef TYPE_4__ _GLFWmonitor ;
typedef int XRRScreenResources ;
struct TYPE_19__ {int mode; } ;
typedef TYPE_5__ XRRCrtcInfo ;
struct TYPE_20__ {int blueBits; int greenBits; int redBits; scalar_t__ refreshRate; int height; int width; } ;
struct TYPE_15__ {int monitorBroken; scalar_t__ available; } ;
struct TYPE_17__ {int screen; int display; int root; TYPE_1__ randr; } ;
struct TYPE_14__ {TYPE_3__ x11; } ;
typedef TYPE_6__ GLFWvidmode ;


 int DefaultDepth (int ,int ) ;
 int DisplayHeight (int ,int ) ;
 int DisplayWidth (int ,int ) ;
 int XRRFreeCrtcInfo (TYPE_5__*) ;
 int XRRFreeScreenResources (int *) ;
 TYPE_5__* XRRGetCrtcInfo (int ,int *,int ) ;
 int * XRRGetScreenResourcesCurrent (int ,int ) ;
 TYPE_11__ _glfw ;
 int _glfwSplitBPP (int ,int *,int *,int *) ;
 int getModeInfo (int *,int ) ;
 TYPE_6__ vidmodeFromModeInfo (int ,TYPE_5__*) ;

void _glfwPlatformGetVideoMode(_GLFWmonitor* monitor, GLFWvidmode* mode)
{
    if (_glfw.x11.randr.available && !_glfw.x11.randr.monitorBroken)
    {
        XRRScreenResources* sr =
            XRRGetScreenResourcesCurrent(_glfw.x11.display, _glfw.x11.root);
        XRRCrtcInfo* ci = XRRGetCrtcInfo(_glfw.x11.display, sr, monitor->x11.crtc);

        *mode = vidmodeFromModeInfo(getModeInfo(sr, ci->mode), ci);

        XRRFreeCrtcInfo(ci);
        XRRFreeScreenResources(sr);
    }
    else
    {
        mode->width = DisplayWidth(_glfw.x11.display, _glfw.x11.screen);
        mode->height = DisplayHeight(_glfw.x11.display, _glfw.x11.screen);
        mode->refreshRate = 0;

        _glfwSplitBPP(DefaultDepth(_glfw.x11.display, _glfw.x11.screen),
                      &mode->redBits, &mode->greenBits, &mode->blueBits);
    }
}
