
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb_args {int ta_start; int ta_vma; } ;


 int local_flush_tlb_page (int ,int ) ;
 int uaccess_restore (unsigned int) ;
 unsigned int uaccess_save_and_enable () ;

__attribute__((used)) static inline void ipi_flush_tlb_page(void *arg)
{
 struct tlb_args *ta = (struct tlb_args *)arg;
 unsigned int __ua_flags = uaccess_save_and_enable();

 local_flush_tlb_page(ta->ta_vma, ta->ta_start);

 uaccess_restore(__ua_flags);
}
