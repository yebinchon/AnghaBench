
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 size_t EFAULT ;
 unsigned long PAGE_SHIFT ;
 void* __va (unsigned long) ;
 scalar_t__ copy_to_user (char*,void*,size_t) ;
 int memcpy (char*,void*,size_t) ;

ssize_t
copy_oldmem_page(unsigned long pfn, char *buf,
  size_t csize, unsigned long offset, int userbuf)
{
 void *vaddr;

 if (!csize)
  return 0;
 vaddr = __va(pfn<<PAGE_SHIFT);
 if (userbuf) {
  if (copy_to_user(buf, (vaddr + offset), csize)) {
   return -EFAULT;
  }
 } else
  memcpy(buf, (vaddr + offset), csize);
 return csize;
}
