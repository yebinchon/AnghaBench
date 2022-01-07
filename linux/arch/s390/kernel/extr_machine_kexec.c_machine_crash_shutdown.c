
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int set_os_info_reipl_block () ;

void machine_crash_shutdown(struct pt_regs *regs)
{
 set_os_info_reipl_block();
}
