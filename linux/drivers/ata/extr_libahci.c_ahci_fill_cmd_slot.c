
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ahci_port_priv {int cmd_tbl_dma; TYPE_1__* cmd_slot; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {void* tbl_addr_hi; void* tbl_addr; scalar_t__ status; void* opts; } ;


 unsigned int AHCI_CMD_TBL_SZ ;
 void* cpu_to_le32 (int) ;

void ahci_fill_cmd_slot(struct ahci_port_priv *pp, unsigned int tag,
   u32 opts)
{
 dma_addr_t cmd_tbl_dma;

 cmd_tbl_dma = pp->cmd_tbl_dma + tag * AHCI_CMD_TBL_SZ;

 pp->cmd_slot[tag].opts = cpu_to_le32(opts);
 pp->cmd_slot[tag].status = 0;
 pp->cmd_slot[tag].tbl_addr = cpu_to_le32(cmd_tbl_dma & 0xffffffff);
 pp->cmd_slot[tag].tbl_addr_hi = cpu_to_le32((cmd_tbl_dma >> 16) >> 16);
}
