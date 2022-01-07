
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;
typedef unsigned long u32 ;
struct kvm_book3e_206_tlb_entry {unsigned long mas1; int mas7_3; scalar_t__ mas2; int mas8; } ;


 unsigned long MAS8_TGS ;
 int SPRN_MAS0 ;
 int SPRN_MAS1 ;
 int SPRN_MAS2 ;
 int SPRN_MAS3 ;
 int SPRN_MAS7 ;
 int SPRN_MAS8 ;
 unsigned long get_thread_specific_lpid (unsigned long) ;
 int isync () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mtspr (int ,unsigned long) ;
 int trace_kvm_booke206_stlb_write (unsigned long,int ,unsigned long,scalar_t__,int) ;

__attribute__((used)) static inline void __write_host_tlbe(struct kvm_book3e_206_tlb_entry *stlbe,
         uint32_t mas0,
         uint32_t lpid)
{
 unsigned long flags;

 local_irq_save(flags);
 mtspr(SPRN_MAS0, mas0);
 mtspr(SPRN_MAS1, stlbe->mas1);
 mtspr(SPRN_MAS2, (unsigned long)stlbe->mas2);
 mtspr(SPRN_MAS3, (u32)stlbe->mas7_3);
 mtspr(SPRN_MAS7, (u32)(stlbe->mas7_3 >> 32));



 asm volatile("isync; tlbwe" : : : "memory");






 local_irq_restore(flags);

 trace_kvm_booke206_stlb_write(mas0, stlbe->mas8, stlbe->mas1,
                               stlbe->mas2, stlbe->mas7_3);
}
