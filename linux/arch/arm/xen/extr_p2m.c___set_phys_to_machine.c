
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __set_phys_to_machine_multi (unsigned long,unsigned long,int) ;

bool __set_phys_to_machine(unsigned long pfn, unsigned long mfn)
{
 return __set_phys_to_machine_multi(pfn, mfn, 1);
}
