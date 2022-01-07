
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 size_t EFAULT ;
 size_t ENOMEM ;
 int PAGE_SIZE ;
 int __pfn_to_phys (unsigned long) ;
 scalar_t__ copy_to_user (char*,void*,size_t) ;
 void* ioremap (int ,int ) ;
 int iounmap (void*) ;
 int memcpy (char*,void*,size_t) ;

ssize_t copy_oldmem_page(unsigned long pfn, char *buf,
    size_t csize, unsigned long offset,
    int userbuf)
{
 void *vaddr;

 if (!csize)
  return 0;

 vaddr = ioremap(__pfn_to_phys(pfn), PAGE_SIZE);
 if (!vaddr)
  return -ENOMEM;

 if (userbuf) {
  if (copy_to_user(buf, vaddr + offset, csize)) {
   iounmap(vaddr);
   return -EFAULT;
  }
 } else {
  memcpy(buf, vaddr + offset, csize);
 }

 iounmap(vaddr);
 return csize;
}
