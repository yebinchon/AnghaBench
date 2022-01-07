
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct TYPE_2__ {size_t phy_devs; scalar_t__ phy_base; } ;


 scalar_t__ CPHY_ADDR (int ) ;
 int CPHY_MAP (size_t,int ) ;
 int cphy_lock ;
 TYPE_1__* port_data ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static u32 __combo_phy_reg_read(u8 sata_port, u32 addr)
{
 u32 data;
 u8 dev = port_data[sata_port].phy_devs;
 spin_lock(&cphy_lock);
 writel(CPHY_MAP(dev, addr), port_data[sata_port].phy_base + 0x800);
 data = readl(port_data[sata_port].phy_base + CPHY_ADDR(addr));
 spin_unlock(&cphy_lock);
 return data;
}
