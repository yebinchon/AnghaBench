
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ AR7_REGS_RESET ;
 scalar_t__ AR7_RESET_SOFTWARE ;
 int * ioremap (scalar_t__,int) ;
 int writel (int,int *) ;

__attribute__((used)) static void ar7_machine_restart(char *command)
{
 u32 *softres_reg = ioremap(AR7_REGS_RESET + AR7_RESET_SOFTWARE, 1);

 writel(1, softres_reg);
}
