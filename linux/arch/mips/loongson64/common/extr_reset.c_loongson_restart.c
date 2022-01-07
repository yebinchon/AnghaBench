
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ restart_addr; } ;


 int cpu_wait () ;
 int loongson_reboot () ;
 TYPE_1__ loongson_sysconf ;
 int mach_prepare_reboot () ;

__attribute__((used)) static void loongson_restart(char *command)
{


 mach_prepare_reboot();


 loongson_reboot();
}
