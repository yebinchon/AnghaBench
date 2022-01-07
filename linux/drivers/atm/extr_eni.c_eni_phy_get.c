
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ phy; } ;


 TYPE_1__* ENI_DEV (struct atm_dev*) ;
 unsigned char readl (scalar_t__) ;

__attribute__((used)) static unsigned char eni_phy_get(struct atm_dev *dev,unsigned long addr)
{
 return readl(ENI_DEV(dev)->phy+addr*4);
}
