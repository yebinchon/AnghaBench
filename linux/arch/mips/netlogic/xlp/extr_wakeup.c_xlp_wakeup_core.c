
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int SYS_9XX_CPU_NONCOHERENT_MODE ;
 int SYS_9XX_CPU_RESET ;
 int SYS_CORE_DFS_DIS_CTRL ;
 int SYS_CPU_NONCOHERENT_MODE ;
 int SYS_CPU_RESET ;
 scalar_t__ cpu_is_xlp9xx () ;
 int cpu_is_xlpii () ;
 int nlm_read_sys_reg (int ,int) ;
 int nlm_write_sys_reg (int ,int,int) ;

__attribute__((used)) static int xlp_wakeup_core(uint64_t sysbase, int node, int core)
{
 uint32_t coremask, value;
 int count, resetreg;

 coremask = (1 << core);


 if (!cpu_is_xlpii()) {
  value = nlm_read_sys_reg(sysbase, SYS_CORE_DFS_DIS_CTRL);
  value &= ~coremask;
  nlm_write_sys_reg(sysbase, SYS_CORE_DFS_DIS_CTRL, value);
 }


 if (cpu_is_xlp9xx()) {
  value = nlm_read_sys_reg(sysbase, SYS_9XX_CPU_NONCOHERENT_MODE);
  value &= ~coremask;
  nlm_write_sys_reg(sysbase, SYS_9XX_CPU_NONCOHERENT_MODE, value);
 }


 resetreg = cpu_is_xlp9xx() ? SYS_9XX_CPU_RESET : SYS_CPU_RESET;
 value = nlm_read_sys_reg(sysbase, resetreg);
 value &= ~coremask;
 nlm_write_sys_reg(sysbase, resetreg, value);


 if (cpu_is_xlp9xx())
  return 1;


 count = 100000;
 do {
  value = nlm_read_sys_reg(sysbase, SYS_CPU_NONCOHERENT_MODE);
 } while ((value & coremask) != 0 && --count > 0);

 return count != 0;
}
