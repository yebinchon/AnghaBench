
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tz_dsttime; int tz_minuteswest; } ;
struct TYPE_4__ {int tz_dsttime; int tz_minuteswest; } ;


 int flush_dcache_page (int ) ;
 TYPE_3__ sys_tz ;
 TYPE_1__* vdso_data ;
 int virt_to_page (TYPE_1__*) ;

void update_vsyscall_tz(void)
{
 vdso_data->tz_minuteswest = sys_tz.tz_minuteswest;
 vdso_data->tz_dsttime = sys_tz.tz_dsttime;
 flush_dcache_page(virt_to_page(vdso_data));
}
