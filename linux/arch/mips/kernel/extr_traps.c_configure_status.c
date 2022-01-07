
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int isa_level; } ;


 int MIPS_CPU_ISA_IV ;
 unsigned int ST0_BEV ;
 unsigned int ST0_CU ;
 unsigned int ST0_CU0 ;
 unsigned int ST0_FR ;
 unsigned int ST0_KX ;
 unsigned int ST0_MX ;
 unsigned int ST0_RE ;
 unsigned int ST0_SX ;
 unsigned int ST0_TS ;
 unsigned int ST0_UX ;
 unsigned int ST0_XX ;
 int change_c0_status (unsigned int,unsigned int) ;
 scalar_t__ cpu_has_dsp ;
 TYPE_1__ current_cpu_data ;

__attribute__((used)) static void configure_status(void)
{






 unsigned int status_set = ST0_CU0;



 if (current_cpu_data.isa_level & MIPS_CPU_ISA_IV)
  status_set |= ST0_XX;
 if (cpu_has_dsp)
  status_set |= ST0_MX;

 change_c0_status(ST0_CU|ST0_MX|ST0_RE|ST0_FR|ST0_BEV|ST0_TS|ST0_KX|ST0_SX|ST0_UX,
    status_set);
}
