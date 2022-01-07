
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIC_FLUSH_ALL ;
 int _tlbie_pid (int ,int ) ;
 int _tlbiel_kernel_broadcast () ;
 scalar_t__ cputlb_use_tlbie () ;

void radix__flush_tlb_kernel_range(unsigned long start, unsigned long end)
{
 if (cputlb_use_tlbie())
  _tlbie_pid(0, RIC_FLUSH_ALL);
 else
  _tlbiel_kernel_broadcast();
}
