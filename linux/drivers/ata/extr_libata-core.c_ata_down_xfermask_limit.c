
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {unsigned long pio_mask; unsigned long mwdma_mask; unsigned long udma_mask; } ;
typedef int buf ;







 unsigned int ATA_DNXFER_QUIET ;
 unsigned long ATA_MASK_MWDMA ;
 unsigned long ATA_MASK_PIO ;
 unsigned long ATA_MASK_UDMA ;
 unsigned long ATA_UDMA_MASK_40C ;
 int BUG () ;
 int ENOENT ;
 int ata_dev_warn (struct ata_device*,char*,char*) ;
 char* ata_mode_string (unsigned long) ;
 unsigned long ata_pack_xfermask (unsigned long,unsigned long,unsigned long) ;
 int ata_unpack_xfermask (unsigned long,unsigned long*,unsigned long*,unsigned long*) ;
 int fls (unsigned long) ;
 int snprintf (char*,int,char*,char*,...) ;

int ata_down_xfermask_limit(struct ata_device *dev, unsigned int sel)
{
 char buf[32];
 unsigned long orig_mask, xfer_mask;
 unsigned long pio_mask, mwdma_mask, udma_mask;
 int quiet, highbit;

 quiet = !!(sel & ATA_DNXFER_QUIET);
 sel &= ~ATA_DNXFER_QUIET;

 xfer_mask = orig_mask = ata_pack_xfermask(dev->pio_mask,
        dev->mwdma_mask,
        dev->udma_mask);
 ata_unpack_xfermask(xfer_mask, &pio_mask, &mwdma_mask, &udma_mask);

 switch (sel) {
 case 128:
  highbit = fls(pio_mask) - 1;
  pio_mask &= ~(1 << highbit);
  break;

 case 131:
  if (udma_mask) {
   highbit = fls(udma_mask) - 1;
   udma_mask &= ~(1 << highbit);
   if (!udma_mask)
    return -ENOENT;
  } else if (mwdma_mask) {
   highbit = fls(mwdma_mask) - 1;
   mwdma_mask &= ~(1 << highbit);
   if (!mwdma_mask)
    return -ENOENT;
  }
  break;

 case 132:
  udma_mask &= ATA_UDMA_MASK_40C;
  break;

 case 129:
  pio_mask &= 1;

 case 130:
  mwdma_mask = 0;
  udma_mask = 0;
  break;

 default:
  BUG();
 }

 xfer_mask &= ata_pack_xfermask(pio_mask, mwdma_mask, udma_mask);

 if (!(xfer_mask & ATA_MASK_PIO) || xfer_mask == orig_mask)
  return -ENOENT;

 if (!quiet) {
  if (xfer_mask & (ATA_MASK_MWDMA | ATA_MASK_UDMA))
   snprintf(buf, sizeof(buf), "%s:%s",
     ata_mode_string(xfer_mask),
     ata_mode_string(xfer_mask & ATA_MASK_PIO));
  else
   snprintf(buf, sizeof(buf), "%s",
     ata_mode_string(xfer_mask));

  ata_dev_warn(dev, "limiting speed to %s\n", buf);
 }

 ata_unpack_xfermask(xfer_mask, &dev->pio_mask, &dev->mwdma_mask,
       &dev->udma_mask);

 return 0;
}
