
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 size_t EFAULT ;
 int copy_page (scalar_t__,void*) ;
 scalar_t__ copy_to_user (char*,scalar_t__,size_t) ;
 scalar_t__ kdump_buf_page ;
 void* kmap_atomic_pfn (unsigned long) ;
 int kunmap_atomic (void*) ;
 int memcpy (char*,void*,size_t) ;
 int pr_warn (char*) ;

ssize_t copy_oldmem_page(unsigned long pfn, char *buf,
    size_t csize, unsigned long offset, int userbuf)
{
 void *vaddr;

 if (!csize)
  return 0;

 vaddr = kmap_atomic_pfn(pfn);

 if (!userbuf) {
  memcpy(buf, (vaddr + offset), csize);
  kunmap_atomic(vaddr);
 } else {
  if (!kdump_buf_page) {
   pr_warn("Kdump: Kdump buffer page not allocated\n");

   return -EFAULT;
  }
  copy_page(kdump_buf_page, vaddr);
  kunmap_atomic(vaddr);
  if (copy_to_user(buf, (kdump_buf_page + offset), csize))
   return -EFAULT;
 }

 return csize;
}
