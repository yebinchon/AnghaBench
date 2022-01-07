
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long KERNBASE ;
 unsigned long kern_base ;
 int patch_one_ktsb_phys (unsigned int*,unsigned int*,unsigned long) ;
 int * swapper_4m_tsb ;
 int * swapper_tsb ;

__attribute__((used)) static void ktsb_phys_patch(void)
{
 extern unsigned int __swapper_tsb_phys_patch;
 extern unsigned int __swapper_tsb_phys_patch_end;
 unsigned long ktsb_pa;

 ktsb_pa = kern_base + ((unsigned long)&swapper_tsb[0] - KERNBASE);
 patch_one_ktsb_phys(&__swapper_tsb_phys_patch,
       &__swapper_tsb_phys_patch_end, ktsb_pa);

 {
 extern unsigned int __swapper_4m_tsb_phys_patch;
 extern unsigned int __swapper_4m_tsb_phys_patch_end;
 ktsb_pa = (kern_base +
     ((unsigned long)&swapper_4m_tsb[0] - KERNBASE));
 patch_one_ktsb_phys(&__swapper_4m_tsb_phys_patch,
       &__swapper_4m_tsb_phys_patch_end, ktsb_pa);
 }

}
