
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct switch_dev {int dummy; } ;


 int MII_MV_PAGE ;
 int mvsw61xx_mdio_write (struct switch_dev*,int,int,int) ;

__attribute__((used)) static void
mvsw61xx_mdio_page_write(struct switch_dev *dev, int port, int page, int reg,
    u16 val)
{
 mvsw61xx_mdio_write(dev, port, MII_MV_PAGE, page);
 mvsw61xx_mdio_write(dev, port, reg, val);
 mvsw61xx_mdio_write(dev, port, MII_MV_PAGE, 0);
}
