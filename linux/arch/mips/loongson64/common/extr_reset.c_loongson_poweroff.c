
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ poweroff_addr; } ;


 int cpu_wait () ;
 TYPE_1__ loongson_sysconf ;
 int mach_prepare_shutdown () ;

__attribute__((used)) static void loongson_poweroff(void)
{

 mach_prepare_shutdown();





 return;
}
