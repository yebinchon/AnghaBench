
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {struct ata_port* ap; } ;
struct ata_port {int flags; TYPE_1__ link; } ;
struct ata_device {int* gscr; int flags; TYPE_1__* link; } ;


 int ATA_DFLAG_AN ;
 int ATA_FLAG_AN ;
 int EINVAL ;
 int EIO ;
 int PMP_GSCR_SII_POL ;
 int SATA_PMP_FEAT_NOTIFY ;
 int SATA_PMP_GSCR_ERROR_EN ;
 size_t SATA_PMP_GSCR_FEAT ;
 size_t SATA_PMP_GSCR_FEAT_EN ;
 int SATA_PMP_MAX_PORTS ;
 int SERR_PHYRDY_CHG ;
 int ata_dev_err (struct ata_device*,char*,char const*,unsigned int) ;
 int ata_dev_info (struct ata_device*,char*,...) ;
 int sata_pmp_gscr_devid (int*) ;
 int sata_pmp_gscr_ports (int*) ;
 int sata_pmp_gscr_rev (int*) ;
 int sata_pmp_gscr_vendor (int*) ;
 unsigned int sata_pmp_read (TYPE_1__*,int ,int*) ;
 int sata_pmp_spec_rev_str (int*) ;
 unsigned int sata_pmp_write (TYPE_1__*,int ,int) ;

__attribute__((used)) static int sata_pmp_configure(struct ata_device *dev, int print_info)
{
 struct ata_port *ap = dev->link->ap;
 u32 *gscr = dev->gscr;
 u16 vendor = sata_pmp_gscr_vendor(gscr);
 u16 devid = sata_pmp_gscr_devid(gscr);
 unsigned int err_mask = 0;
 const char *reason;
 int nr_ports, rc;

 nr_ports = sata_pmp_gscr_ports(gscr);

 if (nr_ports <= 0 || nr_ports > SATA_PMP_MAX_PORTS) {
  rc = -EINVAL;
  reason = "invalid nr_ports";
  goto fail;
 }

 if ((ap->flags & ATA_FLAG_AN) &&
     (gscr[SATA_PMP_GSCR_FEAT] & SATA_PMP_FEAT_NOTIFY))
  dev->flags |= ATA_DFLAG_AN;


 err_mask = sata_pmp_write(dev->link, SATA_PMP_GSCR_ERROR_EN,
      SERR_PHYRDY_CHG);
 if (err_mask) {
  rc = -EIO;
  reason = "failed to write GSCR_ERROR_EN";
  goto fail;
 }







 if (vendor == 0x1095 && (devid == 0x3726 || devid == 0x3826)) {
  u32 reg;

  err_mask = sata_pmp_read(&ap->link, PMP_GSCR_SII_POL, &reg);
  if (err_mask) {
   rc = -EIO;
   reason = "failed to read Sil3x26 Private Register";
   goto fail;
  }
  reg &= ~0x1;
  err_mask = sata_pmp_write(&ap->link, PMP_GSCR_SII_POL, reg);
  if (err_mask) {
   rc = -EIO;
   reason = "failed to write Sil3x26 Private Register";
   goto fail;
  }
 }

 if (print_info) {
  ata_dev_info(dev, "Port Multiplier %s, "
        "0x%04x:0x%04x r%d, %d ports, feat 0x%x/0x%x\n",
        sata_pmp_spec_rev_str(gscr), vendor, devid,
        sata_pmp_gscr_rev(gscr),
        nr_ports, gscr[SATA_PMP_GSCR_FEAT_EN],
        gscr[SATA_PMP_GSCR_FEAT]);

  if (!(dev->flags & ATA_DFLAG_AN))
   ata_dev_info(dev,
    "Asynchronous notification not supported, "
    "hotplug won't work on fan-out ports. Use warm-plug instead.\n");
 }

 return 0;

 fail:
 ata_dev_err(dev,
      "failed to configure Port Multiplier (%s, Emask=0x%x)\n",
      reason, err_mask);
 return rc;
}
