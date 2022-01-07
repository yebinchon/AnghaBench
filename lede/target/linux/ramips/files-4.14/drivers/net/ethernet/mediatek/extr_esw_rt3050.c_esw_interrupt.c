
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt305x_esw {int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int RT305X_ESW_POA_LINK_MASK ;
 int RT305X_ESW_POA_LINK_SHIFT ;
 int RT305X_ESW_PORT_ST_CHG ;
 int RT305X_ESW_REG_ISR ;
 int RT305X_ESW_REG_POA ;
 int dev_info (int ,char*,int) ;
 int esw_r32 (struct rt305x_esw*,int ) ;
 int esw_w32 (struct rt305x_esw*,int,int ) ;

__attribute__((used)) static irqreturn_t esw_interrupt(int irq, void *_esw)
{
 struct rt305x_esw *esw = (struct rt305x_esw *)_esw;
 u32 status;

 status = esw_r32(esw, RT305X_ESW_REG_ISR);
 if (status & RT305X_ESW_PORT_ST_CHG) {
  u32 link = esw_r32(esw, RT305X_ESW_REG_POA);

  link >>= RT305X_ESW_POA_LINK_SHIFT;
  link &= RT305X_ESW_POA_LINK_MASK;
  dev_info(esw->dev, "link changed 0x%02X\n", link);
 }
 esw_w32(esw, status, RT305X_ESW_REG_ISR);

 return IRQ_HANDLED;
}
