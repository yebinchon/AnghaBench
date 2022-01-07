
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* slot; } ;


 unsigned int LSCSA_QW_OFFSET (unsigned int) ;
 int SPU_WrEventMask ;
 TYPE_1__* regs_spill ;
 int spu_writech (int ,unsigned int) ;

__attribute__((used)) static inline void restore_event_mask(void)
{
 unsigned int offset;
 unsigned int event_mask;




 offset = LSCSA_QW_OFFSET(event_mask);
 event_mask = regs_spill[offset].slot[0];
 spu_writech(SPU_WrEventMask, event_mask);
}
