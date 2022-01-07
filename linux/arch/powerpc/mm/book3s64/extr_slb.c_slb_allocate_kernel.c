
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long vmalloc_sllp; } ;
struct TYPE_3__ {unsigned long sllp; } ;


 unsigned long EA_MASK ;
 long EFAULT ;
 unsigned long H_KERN_IO_END ;
 unsigned long H_VMALLOC_END ;
 unsigned long H_VMEMMAP_END ;
 unsigned long IO_REGION_ID ;
 unsigned long LINEAR_MAP_REGION_ID ;
 unsigned long MAX_PHYSMEM_BITS ;
 int MMU_FTR_1T_SEGMENT ;
 int MMU_SEGSIZE_1T ;
 int MMU_SEGSIZE_256M ;
 unsigned long SLB_VSID_KERNEL ;
 unsigned long VMALLOC_REGION_ID ;
 unsigned long VMEMMAP_REGION_ID ;
 unsigned long get_kernel_context (unsigned long) ;
 TYPE_2__* local_paca ;
 int mmu_has_feature (int ) ;
 size_t mmu_io_psize ;
 size_t mmu_linear_psize ;
 TYPE_1__* mmu_psize_defs ;
 size_t mmu_vmemmap_psize ;
 long slb_insert_entry (unsigned long,unsigned long,unsigned long,int,int) ;

__attribute__((used)) static long slb_allocate_kernel(unsigned long ea, unsigned long id)
{
 unsigned long context;
 unsigned long flags;
 int ssize;

 if (id == LINEAR_MAP_REGION_ID) {


  if ((ea & EA_MASK) > (1UL << MAX_PHYSMEM_BITS))
   return -EFAULT;

  flags = SLB_VSID_KERNEL | mmu_psize_defs[mmu_linear_psize].sllp;
 } else if (id == VMALLOC_REGION_ID) {

  if (ea >= H_VMALLOC_END)
   return -EFAULT;

  flags = local_paca->vmalloc_sllp;

 } else if (id == IO_REGION_ID) {

  if (ea >= H_KERN_IO_END)
   return -EFAULT;

  flags = SLB_VSID_KERNEL | mmu_psize_defs[mmu_io_psize].sllp;

 } else {
  return -EFAULT;
 }

 ssize = MMU_SEGSIZE_1T;
 if (!mmu_has_feature(MMU_FTR_1T_SEGMENT))
  ssize = MMU_SEGSIZE_256M;

 context = get_kernel_context(ea);

 return slb_insert_entry(ea, context, flags, ssize, 1);
}
