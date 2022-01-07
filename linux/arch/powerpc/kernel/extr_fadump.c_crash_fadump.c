
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct fadump_crash_info_header {int online_mask; struct pt_regs regs; int crashing_cpu; } ;
struct TYPE_4__ {TYPE_1__* ops; int fadumphdr_addr; scalar_t__ dump_registered; } ;
struct TYPE_3__ {int (* fadump_trigger ) (struct fadump_crash_info_header*,char const*) ;} ;


 struct fadump_crash_info_header* __va (int ) ;
 int cmpxchg (int *,int,int) ;
 int * cpu_online_mask ;
 int cpu_relax () ;
 int crash_save_vmcoreinfo () ;
 int crashing_cpu ;
 TYPE_2__ fw_dump ;
 int ppc_save_regs (struct pt_regs*) ;
 int should_fadump_crash () ;
 int smp_processor_id () ;
 int stub1 (struct fadump_crash_info_header*,char const*) ;

void crash_fadump(struct pt_regs *regs, const char *str)
{
 struct fadump_crash_info_header *fdh = ((void*)0);
 int old_cpu, this_cpu;

 if (!should_fadump_crash())
  return;
 this_cpu = smp_processor_id();
 old_cpu = cmpxchg(&crashing_cpu, -1, this_cpu);

 if (old_cpu != -1) {







  while (fw_dump.dump_registered)
   cpu_relax();
  return;
 }

 fdh = __va(fw_dump.fadumphdr_addr);
 fdh->crashing_cpu = crashing_cpu;
 crash_save_vmcoreinfo();

 if (regs)
  fdh->regs = *regs;
 else
  ppc_save_regs(&fdh->regs);

 fdh->online_mask = *cpu_online_mask;

 fw_dump.ops->fadump_trigger(fdh, str);
}
