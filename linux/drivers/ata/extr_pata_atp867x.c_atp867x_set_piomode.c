
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atp867x_priv {int eightb_piospd; int mstr_piospd; int slave_piospd; int dma_mode; } ;
struct ata_timing {int rec8b; int act8b; int recover; int active; } ;
struct ata_port {struct atp867x_priv* private_data; } ;
struct ata_device {int pio_mode; int devno; } ;


 int ATA_TIMING_8BIT ;
 int ATP867X_IO_DMAMODE_MSTR_MASK ;
 int ATP867X_IO_DMAMODE_SLAVE_MASK ;
 struct ata_device* ata_dev_pair (struct ata_device*) ;
 int ata_timing_compute (struct ata_device*,int,struct ata_timing*,int,int) ;
 int ata_timing_merge (struct ata_timing*,struct ata_timing*,struct ata_timing*,int ) ;
 int atp867x_get_active_clocks_shifted (struct ata_port*,int ) ;
 int atp867x_get_recover_clocks_shifted (int ) ;
 int ioread8 (int ) ;
 int iowrite8 (int,int ) ;

__attribute__((used)) static void atp867x_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct ata_device *peer = ata_dev_pair(adev);
 struct atp867x_priv *dp = ap->private_data;
 u8 speed = adev->pio_mode;
 struct ata_timing t, p;
 int T, UT;
 u8 b;

 T = 1000000000 / 33333;
 UT = T / 4;

 ata_timing_compute(adev, speed, &t, T, UT);
 if (peer && peer->pio_mode) {
  ata_timing_compute(peer, peer->pio_mode, &p, T, UT);
  ata_timing_merge(&p, &t, &t, ATA_TIMING_8BIT);
 }

 b = ioread8(dp->dma_mode);
 if (adev->devno & 1)
  b = (b & ~ATP867X_IO_DMAMODE_SLAVE_MASK);
 else
  b = (b & ~ATP867X_IO_DMAMODE_MSTR_MASK);
 iowrite8(b, dp->dma_mode);

 b = atp867x_get_active_clocks_shifted(ap, t.active) |
     atp867x_get_recover_clocks_shifted(t.recover);

 if (adev->devno & 1)
  iowrite8(b, dp->slave_piospd);
 else
  iowrite8(b, dp->mstr_piospd);

 b = atp867x_get_active_clocks_shifted(ap, t.act8b) |
     atp867x_get_recover_clocks_shifted(t.rec8b);

 iowrite8(b, dp->eightb_piospd);
}
