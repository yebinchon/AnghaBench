
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int infpwbcp; int infpwbif; int infpval1; void* infpabif; void* infpabcp; int infpdifl; int infpsifl; int infpdcps; int infpscps; int infplgnm; void* infplgif; void* infplgcp; int infpflg1; } ;
struct TYPE_10__ {int infmscps; int infmsifl; } ;
struct TYPE_8__ {int infhflg1; } ;
struct sthyi_sctns {TYPE_6__ par; TYPE_4__ mac; TYPE_2__ hdr; } ;
struct TYPE_11__ {int lpar_weight; int all_weight; int lpar_cap; int cpu_num_ded; int cpu_num_shd; int lpar_grp_cap; } ;
struct TYPE_9__ {int lpar_weight; int all_weight; int lpar_cap; int cpu_num_ded; int cpu_num_shd; int lpar_grp_cap; } ;
struct lpar_cpu_inf {TYPE_5__ ifl; TYPE_3__ cp; } ;
struct diag204_x_phys_block {int dummy; } ;
struct TYPE_7__ {int hardware_group_name; scalar_t__ mtid; } ;
struct diag204_x_part_block {TYPE_1__ hdr; } ;
struct diag204_x_info_blk_hdr {int npar; int this_part; int flags; } ;


 scalar_t__ DIAG204_INFO_EXT ;
 int DIAG204_LPAR_PHYS_FLG ;
 scalar_t__ DIAG204_SUBC_RSI ;
 scalar_t__ DIAG204_SUBC_STIB7 ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int HDR_PERF_UNAV ;
 int PAGE_SIZE ;
 int PAR_ABS_VLD ;
 int PAR_GRP_VLD ;
 int PAR_MT_EN ;
 int PAR_PCNT_VLD ;
 int PAR_WGHT_VLD ;
 scalar_t__ __get_free_page (int) ;
 int array_size (int,int ) ;
 int diag204 (unsigned long,int,void*) ;
 scalar_t__ diag224 (void*) ;
 int fill_diag_mac (struct sthyi_sctns*,struct diag204_x_phys_block*,void*) ;
 int free_page (unsigned long) ;
 struct diag204_x_part_block* lpar_cpu_inf (struct lpar_cpu_inf*,int,void*,struct diag204_x_part_block*) ;
 int memcpy (int ,int ,int) ;
 void* scale_cap (int ) ;
 int vfree (void*) ;
 void* vmalloc (int ) ;

__attribute__((used)) static void fill_diag(struct sthyi_sctns *sctns)
{
 int i, r, pages;
 bool this_lpar;
 void *diag204_buf;
 void *diag224_buf = ((void*)0);
 struct diag204_x_info_blk_hdr *ti_hdr;
 struct diag204_x_part_block *part_block;
 struct diag204_x_phys_block *phys_block;
 struct lpar_cpu_inf lpar_inf = {};


 pages = diag204((unsigned long)DIAG204_SUBC_RSI |
   (unsigned long)DIAG204_INFO_EXT, 0, ((void*)0));
 if (pages <= 0)
  return;

 diag204_buf = vmalloc(array_size(pages, PAGE_SIZE));
 if (!diag204_buf)
  return;

 r = diag204((unsigned long)DIAG204_SUBC_STIB7 |
      (unsigned long)DIAG204_INFO_EXT, pages, diag204_buf);
 if (r < 0)
  goto out;

 diag224_buf = (void *)__get_free_page(GFP_KERNEL | GFP_DMA);
 if (!diag224_buf || diag224(diag224_buf))
  goto out;

 ti_hdr = diag204_buf;
 part_block = diag204_buf + sizeof(*ti_hdr);

 for (i = 0; i < ti_hdr->npar; i++) {






  this_lpar = (void *)part_block - diag204_buf == ti_hdr->this_part;
  part_block = lpar_cpu_inf(&lpar_inf, this_lpar, diag224_buf,
       part_block);
 }

 phys_block = (struct diag204_x_phys_block *)part_block;
 part_block = diag204_buf + ti_hdr->this_part;
 if (part_block->hdr.mtid)
  sctns->par.infpflg1 = PAR_MT_EN;

 sctns->par.infpval1 |= PAR_GRP_VLD;
 sctns->par.infplgcp = scale_cap(lpar_inf.cp.lpar_grp_cap);
 sctns->par.infplgif = scale_cap(lpar_inf.ifl.lpar_grp_cap);
 memcpy(sctns->par.infplgnm, part_block->hdr.hardware_group_name,
        sizeof(sctns->par.infplgnm));

 sctns->par.infpscps = lpar_inf.cp.cpu_num_shd;
 sctns->par.infpdcps = lpar_inf.cp.cpu_num_ded;
 sctns->par.infpsifl = lpar_inf.ifl.cpu_num_shd;
 sctns->par.infpdifl = lpar_inf.ifl.cpu_num_ded;
 sctns->par.infpval1 |= PAR_PCNT_VLD;

 sctns->par.infpabcp = scale_cap(lpar_inf.cp.lpar_cap);
 sctns->par.infpabif = scale_cap(lpar_inf.ifl.lpar_cap);
 sctns->par.infpval1 |= PAR_ABS_VLD;





 if (!(ti_hdr->flags & DIAG204_LPAR_PHYS_FLG)) {
  sctns->hdr.infhflg1 |= HDR_PERF_UNAV;
  goto out;
 }

 fill_diag_mac(sctns, phys_block, diag224_buf);

 if (lpar_inf.cp.lpar_weight) {
  sctns->par.infpwbcp = sctns->mac.infmscps * 0x10000 *
   lpar_inf.cp.lpar_weight / lpar_inf.cp.all_weight;
 }

 if (lpar_inf.ifl.lpar_weight) {
  sctns->par.infpwbif = sctns->mac.infmsifl * 0x10000 *
   lpar_inf.ifl.lpar_weight / lpar_inf.ifl.all_weight;
 }
 sctns->par.infpval1 |= PAR_WGHT_VLD;

out:
 free_page((unsigned long)diag224_buf);
 vfree(diag204_buf);
}
