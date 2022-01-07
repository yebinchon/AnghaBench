
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPR_SR ;
 unsigned long SPR_SR_IEE ;
 unsigned long SPR_SR_TEE ;
 unsigned long mfspr (int ) ;
 int mtspr (int ,unsigned long) ;

void arch_local_irq_restore(unsigned long flags)
{
 mtspr(SPR_SR, ((mfspr(SPR_SR) & ~(SPR_SR_IEE|SPR_SR_TEE)) | flags));
}
