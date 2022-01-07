
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_dev {int dev_data; } ;


 int write_utility (int ,int,unsigned char) ;

__attribute__((used)) static void
idt77252_phy_put(struct atm_dev *dev, unsigned char value, unsigned long addr)
{
 write_utility(dev->dev_data, 0x100 + (addr & 0x1ff), value);
}
