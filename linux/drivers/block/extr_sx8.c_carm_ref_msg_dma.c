
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carm_host {scalar_t__ msg_dma; } ;
typedef scalar_t__ dma_addr_t ;


 unsigned int CARM_MSG_SIZE ;

__attribute__((used)) static inline dma_addr_t carm_ref_msg_dma(struct carm_host *host,
       unsigned int msg_idx)
{
 return host->msg_dma + (msg_idx * CARM_MSG_SIZE);
}
