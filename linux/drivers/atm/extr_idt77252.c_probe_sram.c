
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct idt77252_dev {int dummy; } ;


 int ATM_POISON ;
 int SAR_CMD_READ_SRAM ;
 int SAR_CMD_WRITE_SRAM ;
 int SAR_REG_CMD ;
 int SAR_REG_DR0 ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static unsigned long probe_sram(struct idt77252_dev *card)
{
 u32 data, addr;

 writel(0, SAR_REG_DR0);
 writel(SAR_CMD_WRITE_SRAM | (0 << 2), SAR_REG_CMD);

 for (addr = 0x4000; addr < 0x80000; addr += 0x4000) {
  writel(ATM_POISON, SAR_REG_DR0);
  writel(SAR_CMD_WRITE_SRAM | (addr << 2), SAR_REG_CMD);

  writel(SAR_CMD_READ_SRAM | (0 << 2), SAR_REG_CMD);
  data = readl(SAR_REG_DR0);

  if (data != 0)
   break;
 }

 return addr * sizeof(u32);
}
