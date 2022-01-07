
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_reset (int ) ;
 int cpu_proc_fin () ;
 int do_kernel_restart (char*) ;
 int mdelay (int) ;
 int pr_info (char*) ;
 int reboot_mode_nds32 ;
 int setup_mm_for_reboot (int ) ;

void machine_restart(char *cmd)
{



 cpu_proc_fin();






 setup_mm_for_reboot(reboot_mode_nds32);


 do_kernel_restart(cmd);




 arch_reset(reboot_mode_nds32);





 mdelay(1000);
 pr_info("Reboot failed -- System halted\n");
 while (1) ;
}
