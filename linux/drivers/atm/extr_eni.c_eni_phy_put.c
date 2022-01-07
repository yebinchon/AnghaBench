
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ phy; } ;


 TYPE_1__* ENI_DEV (struct atm_dev*) ;
 int writel (unsigned char,scalar_t__) ;

__attribute__((used)) static void eni_phy_put(struct atm_dev *dev,unsigned char value,
    unsigned long addr)
{
 writel(value,ENI_DEV(dev)->phy+addr*4);
}
