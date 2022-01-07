
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short CR_READ_ENABLE ;
 int SATA_PHY_ASIC_DATA ;
 int SATA_PHY_ASIC_STAT ;
 unsigned short readl (int ) ;
 int wait_cr_ack () ;
 int writel (unsigned short,int ) ;

__attribute__((used)) static unsigned short read_cr(unsigned short address)
{
 writel(address, SATA_PHY_ASIC_STAT);
 wait_cr_ack();
 writel(CR_READ_ENABLE, SATA_PHY_ASIC_DATA);
 wait_cr_ack();
 return readl(SATA_PHY_ASIC_STAT);
}
