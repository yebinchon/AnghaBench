
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct TYPE_2__ {int (* set_wallclock ) (struct timespec64*) ;} ;


 int stub1 (struct timespec64*) ;
 TYPE_1__ x86_platform ;

int update_persistent_clock64(struct timespec64 now)
{
 return x86_platform.set_wallclock(&now);
}
