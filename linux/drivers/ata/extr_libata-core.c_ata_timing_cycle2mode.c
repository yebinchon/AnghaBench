
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_xfer_ent {unsigned int shift; int base; } ;
struct ata_timing {int mode; unsigned short cycle; unsigned short udma; } ;





 struct ata_timing* ata_timing_find_mode (int) ;
 unsigned int ata_xfer_mode2shift (int) ;
 struct ata_xfer_ent* ata_xfer_tbl ;

u8 ata_timing_cycle2mode(unsigned int xfer_shift, int cycle)
{
 u8 base_mode = 0xff, last_mode = 0xff;
 const struct ata_xfer_ent *ent;
 const struct ata_timing *t;

 for (ent = ata_xfer_tbl; ent->shift >= 0; ent++)
  if (ent->shift == xfer_shift)
   base_mode = ent->base;

 for (t = ata_timing_find_mode(base_mode);
      t && ata_xfer_mode2shift(t->mode) == xfer_shift; t++) {
  unsigned short this_cycle;

  switch (xfer_shift) {
  case 129:
  case 130:
   this_cycle = t->cycle;
   break;
  case 128:
   this_cycle = t->udma;
   break;
  default:
   return 0xff;
  }

  if (cycle > this_cycle)
   break;

  last_mode = t->mode;
 }

 return last_mode;
}
