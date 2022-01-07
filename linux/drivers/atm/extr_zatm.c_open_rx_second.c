
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zatm_vcc {int rx_chan; } ;
struct zatm_dev {int lock; } ;
struct atm_vcc {int vci; int dev; } ;


 int DPRINTK (char*,int ) ;
 struct zatm_dev* ZATM_DEV (int ) ;
 struct zatm_vcc* ZATM_VCC (struct atm_vcc*) ;
 int inb_p (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uPD98401_RXLT_ENBL ;
 int zpeekl (struct zatm_dev*,int) ;
 int zpokel (struct zatm_dev*,int,int) ;

__attribute__((used)) static int open_rx_second(struct atm_vcc *vcc)
{
 struct zatm_dev *zatm_dev;
 struct zatm_vcc *zatm_vcc;
 unsigned long flags;
 int pos,shift;

 DPRINTK("open_rx_second (0x%x)\n",inb_p(0xc053));
 zatm_dev = ZATM_DEV(vcc->dev);
 zatm_vcc = ZATM_VCC(vcc);
 if (!zatm_vcc->rx_chan) return 0;
 spin_lock_irqsave(&zatm_dev->lock, flags);

 pos = vcc->vci >> 1;
 shift = (1-(vcc->vci & 1)) << 4;
 zpokel(zatm_dev,(zpeekl(zatm_dev,pos) & ~(0xffff << shift)) |
     ((zatm_vcc->rx_chan | uPD98401_RXLT_ENBL) << shift),pos);
 spin_unlock_irqrestore(&zatm_dev->lock, flags);
 return 0;
}
