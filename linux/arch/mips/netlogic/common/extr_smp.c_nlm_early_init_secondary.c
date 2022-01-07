
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ebase; } ;


 int CONF_CM_CMASK ;
 int change_c0_config (int ,int) ;
 TYPE_1__* nlm_current_node () ;
 int write_c0_ebase (int ) ;
 int xlp_mmu_init () ;

void nlm_early_init_secondary(int cpu)
{
 change_c0_config(CONF_CM_CMASK, 0x3);



 write_c0_ebase(nlm_current_node()->ebase);
}
