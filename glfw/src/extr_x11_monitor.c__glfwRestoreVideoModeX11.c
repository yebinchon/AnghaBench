
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int oldMode; int crtc; } ;
struct TYPE_13__ {TYPE_3__ x11; } ;
typedef TYPE_4__ _GLFWmonitor ;
typedef int XRRScreenResources ;
struct TYPE_14__ {int noutput; int outputs; int rotation; int y; int x; } ;
typedef TYPE_5__ XRRCrtcInfo ;
struct TYPE_10__ {int monitorBroken; scalar_t__ available; } ;
struct TYPE_11__ {int display; int root; TYPE_1__ randr; } ;
struct TYPE_15__ {TYPE_2__ x11; } ;


 int CurrentTime ;
 int None ;
 int XRRFreeCrtcInfo (TYPE_5__*) ;
 int XRRFreeScreenResources (int *) ;
 TYPE_5__* XRRGetCrtcInfo (int ,int *,int ) ;
 int * XRRGetScreenResourcesCurrent (int ,int ) ;
 int XRRSetCrtcConfig (int ,int *,int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_7__ _glfw ;

void _glfwRestoreVideoModeX11(_GLFWmonitor* monitor)
{
    if (_glfw.x11.randr.available && !_glfw.x11.randr.monitorBroken)
    {
        if (monitor->x11.oldMode == None)
            return;

        XRRScreenResources* sr =
            XRRGetScreenResourcesCurrent(_glfw.x11.display, _glfw.x11.root);
        XRRCrtcInfo* ci = XRRGetCrtcInfo(_glfw.x11.display, sr, monitor->x11.crtc);

        XRRSetCrtcConfig(_glfw.x11.display,
                         sr, monitor->x11.crtc,
                         CurrentTime,
                         ci->x, ci->y,
                         monitor->x11.oldMode,
                         ci->rotation,
                         ci->outputs,
                         ci->noutput);

        XRRFreeCrtcInfo(ci);
        XRRFreeScreenResources(sr);

        monitor->x11.oldMode = None;
    }
}
