
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb_args {int ta_end; int ta_start; int ta_vma; } ;


 int local_flush_tlb_range (int ,int ,int ) ;
 int uaccess_restore (unsigned int) ;
 unsigned int uaccess_save_and_enable () ;

__attribute__((used)) static inline void ipi_flush_tlb_range(void *arg)
{
 struct tlb_args *ta = (struct tlb_args *)arg;
 unsigned int __ua_flags = uaccess_save_and_enable();

 local_flush_tlb_range(ta->ta_vma, ta->ta_start, ta->ta_end);

 uaccess_restore(__ua_flags);
}
