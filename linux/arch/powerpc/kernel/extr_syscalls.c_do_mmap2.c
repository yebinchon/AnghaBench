
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long EINVAL ;
 int arch_validate_prot (unsigned long,unsigned long) ;
 long ksys_mmap_pgoff (unsigned long,size_t,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline long do_mmap2(unsigned long addr, size_t len,
   unsigned long prot, unsigned long flags,
   unsigned long fd, unsigned long off, int shift)
{
 long ret = -EINVAL;

 if (!arch_validate_prot(prot, addr))
  goto out;

 if (shift) {
  if (off & ((1 << shift) - 1))
   goto out;
  off >>= shift;
 }

 ret = ksys_mmap_pgoff(addr, len, prot, flags, fd, off);
out:
 return ret;
}
