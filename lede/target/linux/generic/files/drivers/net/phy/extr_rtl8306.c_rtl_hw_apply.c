
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switch_dev {int dummy; } ;
struct rtl_phyregs {int dummy; } ;


 int RTL8306_NUM_PORTS ;
 int RTL_REG_CPU_LINKUP ;
 int RTL_REG_EN_TRUNK ;
 int RTL_REG_RESET ;
 int RTL_REG_TRUNK_PORTSEL ;
 int msleep (int) ;
 int rtl_get (struct switch_dev*,int ) ;
 int rtl_phy_restore (struct switch_dev*,int,struct rtl_phyregs*) ;
 int rtl_phy_save (struct switch_dev*,int,struct rtl_phyregs*) ;
 int rtl_port_set_enable (struct switch_dev*,int,int) ;
 int rtl_set (struct switch_dev*,int ,int) ;

__attribute__((used)) static int
rtl_hw_apply(struct switch_dev *dev)
{
 int i;
 int trunk_en, trunk_psel;
 struct rtl_phyregs port5;

 rtl_phy_save(dev, 5, &port5);


 for (i = 0; i < RTL8306_NUM_PORTS - 1; i++) {
  rtl_port_set_enable(dev, i, 0);
 }


 trunk_en = rtl_get(dev, RTL_REG_EN_TRUNK);
 trunk_psel = rtl_get(dev, RTL_REG_TRUNK_PORTSEL);



 rtl_set(dev, RTL_REG_EN_TRUNK, 1);
 rtl_set(dev, RTL_REG_TRUNK_PORTSEL, 1);


 rtl_set(dev, RTL_REG_RESET, 1);



 for (i = 0; i < 10; i++) {
  if (rtl_get(dev, RTL_REG_RESET) == 0)
   break;

  msleep(1);
 }


 for (i = 0; i < RTL8306_NUM_PORTS - 1; i++) {
  rtl_port_set_enable(dev, i, 1);
 }


 rtl_set(dev, RTL_REG_EN_TRUNK, trunk_en);
 rtl_set(dev, RTL_REG_TRUNK_PORTSEL, trunk_psel);
 rtl_phy_restore(dev, 5, &port5);

 rtl_set(dev, RTL_REG_CPU_LINKUP, 1);

 return 0;
}
