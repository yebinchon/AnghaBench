
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {scalar_t__ ip; } ;
struct TYPE_2__ {int comm; int pid; } ;


 TYPE_1__* current ;
 int pr_info (char*,int,int ,int ,void*) ;

__attribute__((used)) static void uv_nmi_dump_cpu_ip(int cpu, struct pt_regs *regs)
{
 pr_info("UV: %4d %6d %-32.32s %pS",
  cpu, current->pid, current->comm, (void *)regs->ip);
}
