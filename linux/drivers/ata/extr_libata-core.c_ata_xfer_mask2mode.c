
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_xfer_ent {int shift; int bits; int base; } ;


 struct ata_xfer_ent* ata_xfer_tbl ;
 int fls (unsigned long) ;

u8 ata_xfer_mask2mode(unsigned long xfer_mask)
{
 int highbit = fls(xfer_mask) - 1;
 const struct ata_xfer_ent *ent;

 for (ent = ata_xfer_tbl; ent->shift >= 0; ent++)
  if (highbit >= ent->shift && highbit < ent->shift + ent->bits)
   return ent->base + highbit - ent->shift;
 return 0xff;
}
