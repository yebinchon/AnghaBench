
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mask ;
typedef int _GLFWwindow ;
struct TYPE_6__ {int mask_len; unsigned char* mask; int deviceid; } ;
typedef TYPE_2__ XIEventMask ;
struct TYPE_5__ {int root; int display; } ;
struct TYPE_7__ {TYPE_1__ x11; } ;


 int XIAllMasterDevices ;
 int XISelectEvents (int ,int ,TYPE_2__*,int) ;
 TYPE_3__ _glfw ;

__attribute__((used)) static void disableRawMouseMotion(_GLFWwindow* window)
{
    XIEventMask em;
    unsigned char mask[] = { 0 };

    em.deviceid = XIAllMasterDevices;
    em.mask_len = sizeof(mask);
    em.mask = mask;

    XISelectEvents(_glfw.x11.display, _glfw.x11.root, &em, 1);
}
