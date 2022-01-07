
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long vmalloc_sllp; int stab_rr; unsigned int slb_kern_bitmap; unsigned int slb_used_bitmap; int kstack; } ;
struct TYPE_3__ {unsigned long sllp; } ;


 int KSTACK_INDEX ;
 int LINEAR_INDEX ;
 int PAGE_OFFSET ;
 int SLB_NUM_BOLTED ;
 unsigned long SLB_VSID_KERNEL ;
 scalar_t__ boot_cpuid ;
 int create_shadowed_slbe (int,int ,unsigned long,int ) ;
 TYPE_2__* get_paca () ;
 size_t mmu_io_psize ;
 int mmu_kernel_ssize ;
 size_t mmu_linear_psize ;
 TYPE_1__* mmu_psize_defs ;
 size_t mmu_vmalloc_psize ;
 size_t mmu_vmemmap_psize ;
 int pr_devel (char*,unsigned long) ;
 scalar_t__ raw_smp_processor_id () ;
 int slb_esid_mask (int ) ;
 int slb_shadow_clear (int ) ;

void slb_initialize(void)
{
 unsigned long linear_llp, vmalloc_llp, io_llp;
 unsigned long lflags;
 static int slb_encoding_inited;





 linear_llp = mmu_psize_defs[mmu_linear_psize].sllp;
 io_llp = mmu_psize_defs[mmu_io_psize].sllp;
 vmalloc_llp = mmu_psize_defs[mmu_vmalloc_psize].sllp;
 get_paca()->vmalloc_sllp = SLB_VSID_KERNEL | vmalloc_llp;



 if (!slb_encoding_inited) {
  slb_encoding_inited = 1;
  pr_devel("SLB: linear  LLP = %04lx\n", linear_llp);
  pr_devel("SLB: io      LLP = %04lx\n", io_llp);



 }

 get_paca()->stab_rr = SLB_NUM_BOLTED - 1;
 get_paca()->slb_kern_bitmap = (1U << SLB_NUM_BOLTED) - 1;
 get_paca()->slb_used_bitmap = get_paca()->slb_kern_bitmap;

 lflags = SLB_VSID_KERNEL | linear_llp;


 asm volatile("isync":::"memory");
 asm volatile("slbmte  %0,%0"::"r" (0) : "memory");
 asm volatile("isync; slbia; isync":::"memory");
 create_shadowed_slbe(PAGE_OFFSET, mmu_kernel_ssize, lflags, LINEAR_INDEX);







 slb_shadow_clear(KSTACK_INDEX);
 if (raw_smp_processor_id() != boot_cpuid &&
     (get_paca()->kstack & slb_esid_mask(mmu_kernel_ssize)) > PAGE_OFFSET)
  create_shadowed_slbe(get_paca()->kstack,
         mmu_kernel_ssize, lflags, KSTACK_INDEX);

 asm volatile("isync":::"memory");
}
