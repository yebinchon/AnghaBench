
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int denom; int numer; } ;
typedef TYPE_3__ mach_timebase_info_data_t ;
struct TYPE_6__ {int frequency; } ;
struct TYPE_7__ {TYPE_1__ ns; } ;
struct TYPE_9__ {TYPE_2__ timer; } ;


 TYPE_5__ _glfw ;
 int mach_timebase_info (TYPE_3__*) ;

void _glfwInitTimerNS(void)
{
    mach_timebase_info_data_t info;
    mach_timebase_info(&info);

    _glfw.timer.ns.frequency = (info.denom * 1e9) / info.numer;
}
