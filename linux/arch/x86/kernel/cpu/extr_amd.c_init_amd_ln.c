
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuinfo_x86 {int dummy; } ;


 int MSR_AMD64_DE_CFG ;
 int msr_set_bit (int ,int) ;

__attribute__((used)) static void init_amd_ln(struct cpuinfo_x86 *c)
{




 msr_set_bit(MSR_AMD64_DE_CFG, 31);
}
