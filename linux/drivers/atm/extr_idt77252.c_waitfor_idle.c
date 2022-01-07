
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idt77252_dev {int dummy; } ;


 int SAR_REG_STAT ;
 int SAR_STAT_CMDBZ ;
 int readl (int ) ;

__attribute__((used)) static void
waitfor_idle(struct idt77252_dev *card)
{
 u32 stat;

 stat = readl(SAR_REG_STAT);
 while (stat & SAR_STAT_CMDBZ)
  stat = readl(SAR_REG_STAT);
}
