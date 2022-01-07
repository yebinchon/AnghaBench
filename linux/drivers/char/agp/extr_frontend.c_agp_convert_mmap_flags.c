
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 unsigned long VM_SHARED ;
 unsigned long calc_vm_prot_bits (int,int ) ;
 int vm_get_page_prot (unsigned long) ;

__attribute__((used)) static pgprot_t agp_convert_mmap_flags(int prot)
{
 unsigned long prot_bits;

 prot_bits = calc_vm_prot_bits(prot, 0) | VM_SHARED;
 return vm_get_page_prot(prot_bits);
}
