
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int edx; int ecx; int ebx; int eax; } ;
struct cpuid_regs_done {int done; TYPE_1__ regs; } ;


 int complete (int *) ;
 int cpuid_count (int ,int ,int *,int *,int *,int *) ;

__attribute__((used)) static void cpuid_smp_cpuid(void *cmd_block)
{
 struct cpuid_regs_done *cmd = cmd_block;

 cpuid_count(cmd->regs.eax, cmd->regs.ecx,
      &cmd->regs.eax, &cmd->regs.ebx,
      &cmd->regs.ecx, &cmd->regs.edx);

 complete(&cmd->done);
}
