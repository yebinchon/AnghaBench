
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int cfg_data; int cfg_addr; } ;


 int GRACKLE_CFA (int ,int ,int) ;
 unsigned int GRACKLE_PICR1_STG ;
 unsigned int in_le32 (int ) ;
 int out_be32 (int ,int ) ;
 int out_le32 (int ,unsigned int) ;

__attribute__((used)) static inline void grackle_set_stg(struct pci_controller* bp, int enable)
{
 unsigned int val;

 out_be32(bp->cfg_addr, GRACKLE_CFA(0, 0, 0xa8));
 val = in_le32(bp->cfg_data);
 val = enable? (val | GRACKLE_PICR1_STG) :
  (val & ~GRACKLE_PICR1_STG);
 out_be32(bp->cfg_addr, GRACKLE_CFA(0, 0, 0xa8));
 out_le32(bp->cfg_data, val);
 (void)in_le32(bp->cfg_data);
}
