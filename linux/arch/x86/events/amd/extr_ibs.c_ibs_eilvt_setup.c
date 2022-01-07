
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x86; } ;


 TYPE_1__ boot_cpu_data ;
 int force_ibs_eilvt_setup () ;

__attribute__((used)) static void ibs_eilvt_setup(void)
{






 if (boot_cpu_data.x86 == 0x10)
  force_ibs_eilvt_setup();
}
