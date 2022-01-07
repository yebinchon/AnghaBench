
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
struct kvm_s390_sie_block {int ecd; int epdx; scalar_t__ epoch; } ;
typedef scalar_t__ s64 ;


 int ECD_MEF ;

__attribute__((used)) static void kvm_clock_sync_scb(struct kvm_s390_sie_block *scb, u64 delta)
{
 u8 delta_idx = 0;





 delta = -delta;


 if ((s64)delta < 0)
  delta_idx = -1;

 scb->epoch += delta;
 if (scb->ecd & ECD_MEF) {
  scb->epdx += delta_idx;
  if (scb->epoch < delta)
   scb->epdx += 1;
 }
}
