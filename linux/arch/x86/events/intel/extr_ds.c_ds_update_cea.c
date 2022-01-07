
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;
typedef int pgprot_t ;


 scalar_t__ PAGE_SIZE ;
 int cea_set_pte (void*,int ,int ) ;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int virt_to_phys (void*) ;

__attribute__((used)) static void ds_update_cea(void *cea, void *addr, size_t size, pgprot_t prot)
{
 unsigned long start = (unsigned long)cea;
 phys_addr_t pa;
 size_t msz = 0;

 pa = virt_to_phys(addr);

 preempt_disable();
 for (; msz < size; msz += PAGE_SIZE, pa += PAGE_SIZE, cea += PAGE_SIZE)
  cea_set_pte(cea, pa, prot);





 flush_tlb_kernel_range(start, start + size);
 preempt_enable();
}
