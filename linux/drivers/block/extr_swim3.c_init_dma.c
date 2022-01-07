
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbdma_cmd {scalar_t__ xfer_status; int phy_addr; void* command; void* req_count; } ;


 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int virt_to_bus (void*) ;

__attribute__((used)) static inline void init_dma(struct dbdma_cmd *cp, int cmd,
       void *buf, int count)
{
 cp->req_count = cpu_to_le16(count);
 cp->command = cpu_to_le16(cmd);
 cp->phy_addr = cpu_to_le32(virt_to_bus(buf));
 cp->xfer_status = 0;
}
