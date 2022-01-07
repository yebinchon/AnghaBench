
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucode_cpu_info {scalar_t__ valid; } ;
typedef enum ucode_state { ____Placeholder_ucode_state } ucode_state ;


 int collect_cpu_info (int) ;
 int microcode_init_cpu (int,int) ;
 int microcode_resume_cpu (int) ;
 struct ucode_cpu_info* ucode_cpu_info ;

__attribute__((used)) static enum ucode_state microcode_update_cpu(int cpu)
{
 struct ucode_cpu_info *uci = ucode_cpu_info + cpu;


 collect_cpu_info(cpu);

 if (uci->valid)
  return microcode_resume_cpu(cpu);

 return microcode_init_cpu(cpu, 0);
}
