
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int _PAGE_CACHE_MODE_WC ;
 scalar_t__ __pa (unsigned long) ;
 int _set_memory_wc (unsigned long,int) ;
 int free_memtype (scalar_t__,scalar_t__) ;
 int reserve_memtype (scalar_t__,scalar_t__,int ,int *) ;

int set_memory_wc(unsigned long addr, int numpages)
{
 int ret;

 ret = reserve_memtype(__pa(addr), __pa(addr) + numpages * PAGE_SIZE,
  _PAGE_CACHE_MODE_WC, ((void*)0));
 if (ret)
  return ret;

 ret = _set_memory_wc(addr, numpages);
 if (ret)
  free_memtype(__pa(addr), __pa(addr) + numpages * PAGE_SIZE);

 return ret;
}
