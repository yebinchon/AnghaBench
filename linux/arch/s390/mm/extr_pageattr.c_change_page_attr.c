
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int EINVAL ;
 unsigned long MODULES_END ;
 int cond_resched () ;
 int cpa_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 int walk_p4d_level (int *,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static int change_page_attr(unsigned long addr, unsigned long end,
       unsigned long flags)
{
 unsigned long next;
 int rc = -EINVAL;
 pgd_t *pgdp;

 if (addr == end)
  return 0;
 if (end >= MODULES_END)
  return -EINVAL;
 mutex_lock(&cpa_mutex);
 pgdp = pgd_offset_k(addr);
 do {
  if (pgd_none(*pgdp))
   break;
  next = pgd_addr_end(addr, end);
  rc = walk_p4d_level(pgdp, addr, next, flags);
  if (rc)
   break;
  cond_resched();
 } while (pgdp++, addr = next, addr < end && !rc);
 mutex_unlock(&cpa_mutex);
 return rc;
}
