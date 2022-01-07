
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int bits; } ;


 int riscv_cpuid_to_hartid_mask (struct cpumask*,struct cpumask*) ;
 int sbi_remote_sfence_vma (int ,unsigned long,unsigned long) ;

__attribute__((used)) static void __sbi_tlb_flush_range(struct cpumask *cmask, unsigned long start,
      unsigned long size)
{
 struct cpumask hmask;

 riscv_cpuid_to_hartid_mask(cmask, &hmask);
 sbi_remote_sfence_vma(hmask.bits, start, size);
}
