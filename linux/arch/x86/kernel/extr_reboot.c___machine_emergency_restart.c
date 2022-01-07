
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* emergency_restart ) () ;} ;


 TYPE_1__ machine_ops ;
 int reboot_emergency ;
 int stub1 () ;

__attribute__((used)) static void __machine_emergency_restart(int emergency)
{
 reboot_emergency = emergency;
 machine_ops.emergency_restart();
}
