
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcr_nmi_disable; int (* write_pcr ) (int ,int ) ;} ;


 int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,int ) ;
 int atomic_dec (int *) ;
 int nmi_active ;
 TYPE_1__* pcr_ops ;
 int stub1 (int ,int ) ;
 int wd_enabled ;

void stop_nmi_watchdog(void *unused)
{
 if (!__this_cpu_read(wd_enabled))
  return;
 pcr_ops->write_pcr(0, pcr_ops->pcr_nmi_disable);
 __this_cpu_write(wd_enabled, 0);
 atomic_dec(&nmi_active);
}
