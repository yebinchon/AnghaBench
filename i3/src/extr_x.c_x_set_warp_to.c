
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mouse_warping; } ;
typedef int Rect ;


 scalar_t__ POINTER_WARPING_NONE ;
 TYPE_1__ config ;
 int * warp_to ;

void x_set_warp_to(Rect *rect) {
    if (config.mouse_warping != POINTER_WARPING_NONE)
        warp_to = rect;
}
