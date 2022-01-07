
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short CR_CAP_DATA ;
 unsigned short CR_WRITE_ENABLE ;
 int SATA_PHY_ASIC_DATA ;
 int SATA_PHY_ASIC_STAT ;
 int wait_cr_ack () ;
 int writel (unsigned short,int ) ;

__attribute__((used)) static void write_cr(unsigned short data, unsigned short address)
{
 writel(address, SATA_PHY_ASIC_STAT);
 wait_cr_ack();
 writel((data | CR_CAP_DATA), SATA_PHY_ASIC_DATA);
 wait_cr_ack();
 writel(CR_WRITE_ENABLE, SATA_PHY_ASIC_DATA);
 wait_cr_ack();
 return;
}
