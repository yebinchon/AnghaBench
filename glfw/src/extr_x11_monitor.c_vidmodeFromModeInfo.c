
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int height; int width; } ;
typedef TYPE_2__ XRRModeInfo ;
struct TYPE_12__ {scalar_t__ rotation; } ;
typedef TYPE_3__ XRRCrtcInfo ;
struct TYPE_10__ {int screen; int display; } ;
struct TYPE_14__ {TYPE_1__ x11; } ;
struct TYPE_13__ {int blueBits; int greenBits; int redBits; int refreshRate; int height; int width; } ;
typedef TYPE_4__ GLFWvidmode ;


 int DefaultDepth (int ,int ) ;
 scalar_t__ RR_Rotate_270 ;
 scalar_t__ RR_Rotate_90 ;
 TYPE_9__ _glfw ;
 int _glfwSplitBPP (int ,int *,int *,int *) ;
 int calculateRefreshRate (TYPE_2__ const*) ;

__attribute__((used)) static GLFWvidmode vidmodeFromModeInfo(const XRRModeInfo* mi,
                                       const XRRCrtcInfo* ci)
{
    GLFWvidmode mode;

    if (ci->rotation == RR_Rotate_90 || ci->rotation == RR_Rotate_270)
    {
        mode.width = mi->height;
        mode.height = mi->width;
    }
    else
    {
        mode.width = mi->width;
        mode.height = mi->height;
    }

    mode.refreshRate = calculateRefreshRate(mi);

    _glfwSplitBPP(DefaultDepth(_glfw.x11.display, _glfw.x11.screen),
                  &mode.redBits, &mode.greenBits, &mode.blueBits);

    return mode;
}
