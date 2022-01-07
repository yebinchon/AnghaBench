
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SATA_PHY_ASIC_STAT ;
 int readl (int ) ;

__attribute__((used)) static void wait_cr_ack(void)
{
 while ((readl(SATA_PHY_ASIC_STAT) >> 16) & 0x1f)
                                     ;
}
