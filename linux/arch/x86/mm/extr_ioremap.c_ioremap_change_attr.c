
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;


 unsigned long PAGE_SHIFT ;




 int _set_memory_uc (unsigned long,unsigned long) ;
 int _set_memory_wb (unsigned long,unsigned long) ;
 int _set_memory_wc (unsigned long,unsigned long) ;
 int _set_memory_wt (unsigned long,unsigned long) ;

int ioremap_change_attr(unsigned long vaddr, unsigned long size,
   enum page_cache_mode pcm)
{
 unsigned long nrpages = size >> PAGE_SHIFT;
 int err;

 switch (pcm) {
 case 131:
 default:
  err = _set_memory_uc(vaddr, nrpages);
  break;
 case 129:
  err = _set_memory_wc(vaddr, nrpages);
  break;
 case 128:
  err = _set_memory_wt(vaddr, nrpages);
  break;
 case 130:
  err = _set_memory_wb(vaddr, nrpages);
  break;
 }

 return err;
}
