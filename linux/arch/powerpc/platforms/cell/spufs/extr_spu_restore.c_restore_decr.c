
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* slot; } ;


 unsigned int LSCSA_QW_OFFSET (unsigned int) ;
 unsigned int SPU_DECR_STATUS_RUNNING ;
 int SPU_WrDec ;
 unsigned int decr_status ;
 TYPE_1__* regs_spill ;
 int spu_writech (int ,unsigned int) ;

__attribute__((used)) static inline void restore_decr(void)
{
 unsigned int offset;
 unsigned int decr_running;
 unsigned int decr;






 offset = LSCSA_QW_OFFSET(decr_status);
 decr_running = regs_spill[offset].slot[0] & SPU_DECR_STATUS_RUNNING;
 if (decr_running) {
  offset = LSCSA_QW_OFFSET(decr);
  decr = regs_spill[offset].slot[0];
  spu_writech(SPU_WrDec, decr);
 }
}
