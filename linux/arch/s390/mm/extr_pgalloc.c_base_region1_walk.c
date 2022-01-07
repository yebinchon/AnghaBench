
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 unsigned long _REGION1_ENTRY ;
 unsigned long _REGION1_INDEX ;
 unsigned long _REGION1_SHIFT ;
 int _REGION2_ENTRY_EMPTY ;
 unsigned long _REGION_ENTRY_INVALID ;
 unsigned long _REGION_ENTRY_ORIGIN ;
 unsigned long base_crst_alloc (int ) ;
 int base_crst_free (unsigned long) ;
 unsigned long base_region1_addr_end (unsigned long,unsigned long) ;
 int base_region2_walk (unsigned long,unsigned long,unsigned long,int) ;

__attribute__((used)) static int base_region1_walk(unsigned long origin, unsigned long addr,
        unsigned long end, int alloc)
{
 unsigned long *rfte, next, table;
 int rc;

 rfte = (unsigned long *) origin;
 rfte += (addr & _REGION1_INDEX) >> _REGION1_SHIFT;
 do {
  next = base_region1_addr_end(addr, end);
  if (*rfte & _REGION_ENTRY_INVALID) {
   if (!alloc)
    continue;
   table = base_crst_alloc(_REGION2_ENTRY_EMPTY);
   if (!table)
    return -ENOMEM;
   *rfte = table | _REGION1_ENTRY;
  }
  table = *rfte & _REGION_ENTRY_ORIGIN;
  rc = base_region2_walk(table, addr, next, alloc);
  if (rc)
   return rc;
  if (!alloc)
   base_crst_free(table);
 } while (rfte++, addr = next, addr < end);
 return 0;
}
