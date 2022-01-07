
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* hpte_removebolted ) (unsigned long,int,int) ;} ;
struct TYPE_3__ {unsigned int shift; } ;


 int ENODEV ;
 int ENOENT ;
 TYPE_2__ mmu_hash_ops ;
 TYPE_1__* mmu_psize_defs ;
 int stub1 (unsigned long,int,int) ;

int htab_remove_mapping(unsigned long vstart, unsigned long vend,
        int psize, int ssize)
{
 unsigned long vaddr;
 unsigned int step, shift;
 int rc;
 int ret = 0;

 shift = mmu_psize_defs[psize].shift;
 step = 1 << shift;

 if (!mmu_hash_ops.hpte_removebolted)
  return -ENODEV;

 for (vaddr = vstart; vaddr < vend; vaddr += step) {
  rc = mmu_hash_ops.hpte_removebolted(vaddr, psize, ssize);
  if (rc == -ENOENT) {
   ret = -ENOENT;
   continue;
  }
  if (rc < 0)
   return rc;
 }

 return ret;
}
