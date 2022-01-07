
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* slot; } ;


 unsigned int LSCSA_QW_OFFSET (unsigned int) ;
 int SPU_WrSRR0 ;
 TYPE_1__* regs_spill ;
 int spu_writech (int ,unsigned int) ;

__attribute__((used)) static inline void restore_srr0(void)
{
 unsigned int offset;
 unsigned int srr0;




 offset = LSCSA_QW_OFFSET(srr0);
 srr0 = regs_spill[offset].slot[0];
 spu_writech(SPU_WrSRR0, srr0);
}
