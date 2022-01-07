
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long phys_addr_t ;
struct TYPE_3__ {int esel_next; int esel_max; int esel_first; } ;
struct TYPE_4__ {TYPE_1__ tcd; } ;


 int PAGE_KERNEL_X ;
 int SPRN_TLB1CFG ;
 int TLBnCFG_N_ENTRY ;
 unsigned long calc_cam_sz (unsigned long,unsigned long,unsigned long) ;
 TYPE_2__* get_paca () ;
 int loadcam_multi (int ,int,int) ;
 int mfspr (int ) ;
 int pgprot_val (int ) ;
 int settlbcam (int,unsigned long,unsigned long,unsigned long,int ,int ) ;
 int tlbcam_index ;

__attribute__((used)) static unsigned long map_mem_in_cams_addr(phys_addr_t phys, unsigned long virt,
     unsigned long ram, int max_cam_idx,
     bool dryrun)
{
 int i;
 unsigned long amount_mapped = 0;


 for (i = 0; ram && i < max_cam_idx; i++) {
  unsigned long cam_sz;

  cam_sz = calc_cam_sz(ram, virt, phys);
  if (!dryrun)
   settlbcam(i, virt, phys, cam_sz,
      pgprot_val(PAGE_KERNEL_X), 0);

  ram -= cam_sz;
  amount_mapped += cam_sz;
  virt += cam_sz;
  phys += cam_sz;
 }

 if (dryrun)
  return amount_mapped;

 loadcam_multi(0, i, max_cam_idx);
 tlbcam_index = i;







 return amount_mapped;
}
