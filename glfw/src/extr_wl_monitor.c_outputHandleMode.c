
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct wl_output {int dummy; } ;
struct TYPE_5__ {int currentMode; } ;
struct _GLFWmonitor {int modeCount; TYPE_1__ wl; TYPE_2__* modes; } ;
typedef double int32_t ;
struct TYPE_6__ {double width; double height; int redBits; int greenBits; int blueBits; int refreshRate; } ;
typedef TYPE_2__ GLFWvidmode ;


 int WL_OUTPUT_MODE_CURRENT ;
 TYPE_2__* realloc (TYPE_2__*,int) ;
 scalar_t__ round (double) ;

__attribute__((used)) static void outputHandleMode(void* data,
                             struct wl_output* output,
                             uint32_t flags,
                             int32_t width,
                             int32_t height,
                             int32_t refresh)
{
    struct _GLFWmonitor *monitor = data;
    GLFWvidmode mode;

    mode.width = width;
    mode.height = height;
    mode.redBits = 8;
    mode.greenBits = 8;
    mode.blueBits = 8;
    mode.refreshRate = (int) round(refresh / 1000.0);

    monitor->modeCount++;
    monitor->modes =
        realloc(monitor->modes, monitor->modeCount * sizeof(GLFWvidmode));
    monitor->modes[monitor->modeCount - 1] = mode;

    if (flags & WL_OUTPUT_MODE_CURRENT)
        monitor->wl.currentMode = monitor->modeCount - 1;
}
