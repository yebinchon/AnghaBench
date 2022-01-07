
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union vaddress {unsigned long addr; unsigned long rfx; unsigned long rsx; unsigned long rtx; unsigned long sx; int sx01; int rtx01; int rsx01; int rfx01; } ;
struct TYPE_6__ {int p; int pto; } ;
struct TYPE_5__ {unsigned long sfaa; } ;
union segment_table_entry {unsigned long val; TYPE_2__ fc0; TYPE_1__ fc1; int fc; int cs; int tt; int i; } ;
struct TYPE_8__ {int p; int sto; int tl; int tf; } ;
struct TYPE_7__ {unsigned long rfaa; } ;
union region3_table_entry {unsigned long val; TYPE_4__ fc0; TYPE_3__ fc1; int fc; int cr; int tt; int i; } ;
union region2_table_entry {unsigned long val; int p; int rto; int tl; int tf; int tt; int i; } ;
union region1_table_entry {unsigned long val; int p; int rto; int tl; int tf; int tt; int i; } ;
union asce {int origin; int dt; int p; int tl; scalar_t__ r; int val; } ;
struct gmap {int edat_level; int orig_asce; struct gmap* parent; } ;






 int PAGE_SIZE ;
 int PGM_ASCE_TYPE ;
 int PGM_REGION_FIRST_TRANS ;
 int PGM_REGION_SECOND_TRANS ;
 int PGM_REGION_THIRD_TRANS ;
 int PGM_SEGMENT_TRANSLATION ;
 int PGM_TRANSLATION_SPEC ;
 int TABLE_TYPE_REGION1 ;
 int TABLE_TYPE_REGION2 ;
 int TABLE_TYPE_REGION3 ;
 int TABLE_TYPE_SEGMENT ;
 unsigned long _REGION1_SIZE ;
 unsigned long _REGION2_SIZE ;
 unsigned long _REGION3_SIZE ;
 unsigned long _SEGMENT_SIZE ;
 int gmap_read_table (struct gmap*,unsigned long,unsigned long*) ;
 int gmap_shadow_pgt (struct gmap*,unsigned long,unsigned long,int) ;
 int gmap_shadow_r2t (struct gmap*,unsigned long,unsigned long,int) ;
 int gmap_shadow_r3t (struct gmap*,unsigned long,unsigned long,int) ;
 int gmap_shadow_sgt (struct gmap*,unsigned long,unsigned long,int) ;

__attribute__((used)) static int kvm_s390_shadow_tables(struct gmap *sg, unsigned long saddr,
      unsigned long *pgt, int *dat_protection,
      int *fake)
{
 struct gmap *parent;
 union asce asce;
 union vaddress vaddr;
 unsigned long ptr;
 int rc;

 *fake = 0;
 *dat_protection = 0;
 parent = sg->parent;
 vaddr.addr = saddr;
 asce.val = sg->orig_asce;
 ptr = asce.origin * PAGE_SIZE;
 if (asce.r) {
  *fake = 1;
  ptr = 0;
  asce.dt = 131;
 }
 switch (asce.dt) {
 case 131:
  if (vaddr.rfx01 > asce.tl && !*fake)
   return PGM_REGION_FIRST_TRANS;
  break;
 case 130:
  if (vaddr.rfx)
   return PGM_ASCE_TYPE;
  if (vaddr.rsx01 > asce.tl)
   return PGM_REGION_SECOND_TRANS;
  break;
 case 129:
  if (vaddr.rfx || vaddr.rsx)
   return PGM_ASCE_TYPE;
  if (vaddr.rtx01 > asce.tl)
   return PGM_REGION_THIRD_TRANS;
  break;
 case 128:
  if (vaddr.rfx || vaddr.rsx || vaddr.rtx)
   return PGM_ASCE_TYPE;
  if (vaddr.sx01 > asce.tl)
   return PGM_SEGMENT_TRANSLATION;
  break;
 }

 switch (asce.dt) {
 case 131: {
  union region1_table_entry rfte;

  if (*fake) {
   ptr += vaddr.rfx * _REGION1_SIZE;
   rfte.val = ptr;
   goto shadow_r2t;
  }
  rc = gmap_read_table(parent, ptr + vaddr.rfx * 8, &rfte.val);
  if (rc)
   return rc;
  if (rfte.i)
   return PGM_REGION_FIRST_TRANS;
  if (rfte.tt != TABLE_TYPE_REGION1)
   return PGM_TRANSLATION_SPEC;
  if (vaddr.rsx01 < rfte.tf || vaddr.rsx01 > rfte.tl)
   return PGM_REGION_SECOND_TRANS;
  if (sg->edat_level >= 1)
   *dat_protection |= rfte.p;
  ptr = rfte.rto * PAGE_SIZE;
shadow_r2t:
  rc = gmap_shadow_r2t(sg, saddr, rfte.val, *fake);
  if (rc)
   return rc;
 }
 case 130: {
  union region2_table_entry rste;

  if (*fake) {
   ptr += vaddr.rsx * _REGION2_SIZE;
   rste.val = ptr;
   goto shadow_r3t;
  }
  rc = gmap_read_table(parent, ptr + vaddr.rsx * 8, &rste.val);
  if (rc)
   return rc;
  if (rste.i)
   return PGM_REGION_SECOND_TRANS;
  if (rste.tt != TABLE_TYPE_REGION2)
   return PGM_TRANSLATION_SPEC;
  if (vaddr.rtx01 < rste.tf || vaddr.rtx01 > rste.tl)
   return PGM_REGION_THIRD_TRANS;
  if (sg->edat_level >= 1)
   *dat_protection |= rste.p;
  ptr = rste.rto * PAGE_SIZE;
shadow_r3t:
  rste.p |= *dat_protection;
  rc = gmap_shadow_r3t(sg, saddr, rste.val, *fake);
  if (rc)
   return rc;
 }
 case 129: {
  union region3_table_entry rtte;

  if (*fake) {
   ptr += vaddr.rtx * _REGION3_SIZE;
   rtte.val = ptr;
   goto shadow_sgt;
  }
  rc = gmap_read_table(parent, ptr + vaddr.rtx * 8, &rtte.val);
  if (rc)
   return rc;
  if (rtte.i)
   return PGM_REGION_THIRD_TRANS;
  if (rtte.tt != TABLE_TYPE_REGION3)
   return PGM_TRANSLATION_SPEC;
  if (rtte.cr && asce.p && sg->edat_level >= 2)
   return PGM_TRANSLATION_SPEC;
  if (rtte.fc && sg->edat_level >= 2) {
   *dat_protection |= rtte.fc0.p;
   *fake = 1;
   ptr = rtte.fc1.rfaa * _REGION3_SIZE;
   rtte.val = ptr;
   goto shadow_sgt;
  }
  if (vaddr.sx01 < rtte.fc0.tf || vaddr.sx01 > rtte.fc0.tl)
   return PGM_SEGMENT_TRANSLATION;
  if (sg->edat_level >= 1)
   *dat_protection |= rtte.fc0.p;
  ptr = rtte.fc0.sto * PAGE_SIZE;
shadow_sgt:
  rtte.fc0.p |= *dat_protection;
  rc = gmap_shadow_sgt(sg, saddr, rtte.val, *fake);
  if (rc)
   return rc;
 }
 case 128: {
  union segment_table_entry ste;

  if (*fake) {
   ptr += vaddr.sx * _SEGMENT_SIZE;
   ste.val = ptr;
   goto shadow_pgt;
  }
  rc = gmap_read_table(parent, ptr + vaddr.sx * 8, &ste.val);
  if (rc)
   return rc;
  if (ste.i)
   return PGM_SEGMENT_TRANSLATION;
  if (ste.tt != TABLE_TYPE_SEGMENT)
   return PGM_TRANSLATION_SPEC;
  if (ste.cs && asce.p)
   return PGM_TRANSLATION_SPEC;
  *dat_protection |= ste.fc0.p;
  if (ste.fc && sg->edat_level >= 1) {
   *fake = 1;
   ptr = ste.fc1.sfaa * _SEGMENT_SIZE;
   ste.val = ptr;
   goto shadow_pgt;
  }
  ptr = ste.fc0.pto * (PAGE_SIZE / 2);
shadow_pgt:
  ste.fc0.p |= *dat_protection;
  rc = gmap_shadow_pgt(sg, saddr, ste.val, *fake);
  if (rc)
   return rc;
 }
 }

 *pgt = ptr;
 return 0;
}
