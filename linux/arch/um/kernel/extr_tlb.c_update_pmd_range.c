
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host_vm_change {scalar_t__ force; } ;
typedef int pud_t ;
typedef int pmd_t ;


 int add_munmap (unsigned long,unsigned long,struct host_vm_change*) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 int pmd_mkuptodate (int ) ;
 scalar_t__ pmd_newpage (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 int update_pte_range (int *,unsigned long,unsigned long,struct host_vm_change*) ;

__attribute__((used)) static inline int update_pmd_range(pud_t *pud, unsigned long addr,
       unsigned long end,
       struct host_vm_change *hvc)
{
 pmd_t *pmd;
 unsigned long next;
 int ret = 0;

 pmd = pmd_offset(pud, addr);
 do {
  next = pmd_addr_end(addr, end);
  if (!pmd_present(*pmd)) {
   if (hvc->force || pmd_newpage(*pmd)) {
    ret = add_munmap(addr, next - addr, hvc);
    pmd_mkuptodate(*pmd);
   }
  }
  else ret = update_pte_range(pmd, addr, next, hvc);
 } while (pmd++, addr = next, ((addr < end) && !ret));
 return ret;
}
