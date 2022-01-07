
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int PAGE_ALIGNED (unsigned long) ;
 int PHYS_PFN (int ) ;
 int __pa (unsigned long) ;
 int uv_unshare_page (int ,int) ;

int set_memory_encrypted(unsigned long addr, int numpages)
{
 if (!PAGE_ALIGNED(addr))
  return -EINVAL;

 uv_unshare_page(PHYS_PFN(__pa(addr)), numpages);

 return 0;
}
