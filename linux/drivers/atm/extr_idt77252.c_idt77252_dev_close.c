
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idt77252_dev {int name; } ;
struct atm_dev {struct idt77252_dev* dev_data; } ;


 int DIPRINTK (char*,int ) ;
 int SAR_CFG_FBIE ;
 int SAR_CFG_RAWIE ;
 int SAR_CFG_RQFIE ;
 int SAR_CFG_RXPTH ;
 int SAR_CFG_TMOIE ;
 int SAR_CFG_TXEN ;
 int SAR_CFG_TXINT ;
 int SAR_CFG_TXSFI ;
 int SAR_CFG_TXUIE ;
 int SAR_REG_CFG ;
 int SAR_RX_DELAY ;
 int close_card_oam (struct idt77252_dev*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void idt77252_dev_close(struct atm_dev *dev)
{
 struct idt77252_dev *card = dev->dev_data;
 u32 conf;

 close_card_oam(card);

 conf = SAR_CFG_RXPTH |
     SAR_RX_DELAY |
     SAR_CFG_RAWIE |
     SAR_CFG_RQFIE |
     SAR_CFG_TMOIE |
     SAR_CFG_FBIE |
     SAR_CFG_TXEN |
     SAR_CFG_TXINT |
     SAR_CFG_TXUIE |
     SAR_CFG_TXSFI
     ;

 writel(readl(SAR_REG_CFG) & ~(conf), SAR_REG_CFG);

 DIPRINTK("%s: closed IDT77252 ABR SAR.\n", card->name);
}
