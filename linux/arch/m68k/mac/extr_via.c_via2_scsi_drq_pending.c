
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_IDX (int ) ;
 int IRQ_MAC_SCSIDRQ ;
 size_t gIFR ;
 int* via2 ;

int via2_scsi_drq_pending(void)
{
 return via2[gIFR] & (1 << IRQ_IDX(IRQ_MAC_SCSIDRQ));
}
