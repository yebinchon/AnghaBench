
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tz_dsttime; int tz_minuteswest; } ;
struct TYPE_3__ {int tz_dsttime; int tz_minuteswest; } ;


 TYPE_2__ sys_tz ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vvar_data ;

void update_vsyscall_tz(void)
{
 if (unlikely(vvar_data == ((void*)0)))
  return;

 vvar_data->tz_minuteswest = sys_tz.tz_minuteswest;
 vvar_data->tz_dsttime = sys_tz.tz_dsttime;
}
