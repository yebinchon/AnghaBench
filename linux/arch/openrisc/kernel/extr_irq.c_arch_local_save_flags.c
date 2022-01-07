
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPR_SR ;
 unsigned long SPR_SR_IEE ;
 unsigned long SPR_SR_TEE ;
 unsigned long mfspr (int ) ;

unsigned long arch_local_save_flags(void)
{
 return mfspr(SPR_SR) & (SPR_SR_IEE|SPR_SR_TEE);
}
