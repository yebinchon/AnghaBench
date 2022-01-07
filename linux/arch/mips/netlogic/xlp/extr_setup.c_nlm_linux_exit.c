
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int sysbase; } ;


 int SYS_9XX_CHIP_RESET ;
 int SYS_CHIP_RESET ;
 scalar_t__ cpu_is_xlp9xx () ;
 int cpu_wait () ;
 TYPE_1__* nlm_get_node (int ) ;
 int nlm_write_sys_reg (int ,int ,int) ;

__attribute__((used)) static void nlm_linux_exit(void)
{
 uint64_t sysbase = nlm_get_node(0)->sysbase;

 if (cpu_is_xlp9xx())
  nlm_write_sys_reg(sysbase, SYS_9XX_CHIP_RESET, 1);
 else
  nlm_write_sys_reg(sysbase, SYS_CHIP_RESET, 1);
 for ( ; ; )
  cpu_wait();
}
