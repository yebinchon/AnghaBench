
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucode_cpu_info {scalar_t__ mc; scalar_t__ valid; } ;
struct TYPE_2__ {int (* apply_microcode ) (int) ;} ;


 TYPE_1__* microcode_ops ;
 int reload_early_microcode () ;
 int smp_processor_id () ;
 int stub1 (int) ;
 struct ucode_cpu_info* ucode_cpu_info ;

__attribute__((used)) static void mc_bp_resume(void)
{
 int cpu = smp_processor_id();
 struct ucode_cpu_info *uci = ucode_cpu_info + cpu;

 if (uci->valid && uci->mc)
  microcode_ops->apply_microcode(cpu);
 else if (!uci->mc)
  reload_early_microcode();
}
