
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cpuinfo_x86 {int x86_model; } ;


 int MSR_F15H_IC_CFG ;
 int clear_rdrand_cpuid_bit (struct cpuinfo_x86*) ;
 int rdmsrl_safe (int ,int*) ;
 int wrmsrl_safe (int ,int) ;

__attribute__((used)) static void init_amd_bd(struct cpuinfo_x86 *c)
{
 u64 value;





 if ((c->x86_model >= 0x02) && (c->x86_model < 0x20)) {
  if (!rdmsrl_safe(MSR_F15H_IC_CFG, &value) && !(value & 0x1E)) {
   value |= 0x1E;
   wrmsrl_safe(MSR_F15H_IC_CFG, value);
  }
 }






 clear_rdrand_cpuid_bit(c);
}
