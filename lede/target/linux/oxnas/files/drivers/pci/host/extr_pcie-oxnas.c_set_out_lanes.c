
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxnas_pcie {scalar_t__ outbound_offset; int sys_ctrl; } ;


 scalar_t__ PCIE_AHB_SLAVE_CTRL ;
 int PCIE_SLAVE_BE (unsigned int) ;
 int PCIE_SLAVE_BE_MASK ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 int wmb () ;

__attribute__((used)) static inline void set_out_lanes(struct oxnas_pcie *pcie, unsigned lanes)
{
 regmap_update_bits(pcie->sys_ctrl, pcie->outbound_offset + PCIE_AHB_SLAVE_CTRL,
      PCIE_SLAVE_BE_MASK, PCIE_SLAVE_BE(lanes));
 wmb();
}
