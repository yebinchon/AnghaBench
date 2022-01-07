
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int dummy; } ;


 int GDROM_RESET_REG ;
 int __raw_readl (int) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static int gdrom_hardreset(struct cdrom_device_info *cd_info)
{
 int count;
 __raw_writel(0x1fffff, GDROM_RESET_REG);
 for (count = 0xa0000000; count < 0xa0200000; count += 4)
  __raw_readl(count);
 return 0;
}
