
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long EINVAL ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 long ksys_mmap_pgoff (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

long old_mmap(unsigned long addr, unsigned long len,
       unsigned long prot, unsigned long flags,
       unsigned long fd, unsigned long offset)
{
 long err = -EINVAL;
 if (offset & ~PAGE_MASK)
  goto out;

 err = ksys_mmap_pgoff(addr, len, prot, flags, fd, offset >> PAGE_SHIFT);
 out:
 return err;
}
