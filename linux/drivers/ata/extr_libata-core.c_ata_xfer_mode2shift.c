
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_xfer_ent {scalar_t__ shift; unsigned long base; unsigned long bits; } ;


 struct ata_xfer_ent* ata_xfer_tbl ;

int ata_xfer_mode2shift(unsigned long xfer_mode)
{
 const struct ata_xfer_ent *ent;

 for (ent = ata_xfer_tbl; ent->shift >= 0; ent++)
  if (xfer_mode >= ent->base && xfer_mode < ent->base + ent->bits)
   return ent->shift;
 return -1;
}
