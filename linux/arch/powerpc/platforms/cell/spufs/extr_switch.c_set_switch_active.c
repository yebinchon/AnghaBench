
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mfc_control_RW; } ;
struct spu_state {TYPE_1__ priv2; } ;
struct spu {int flags; } ;


 int MFC_CNTL_RESTART_DMA_COMMAND ;
 int SPU_CONTEXT_FAULT_PENDING ;
 int SPU_CONTEXT_SWITCH_PENDING ;
 int clear_bit (int ,int *) ;
 int mb () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline void set_switch_active(struct spu_state *csa, struct spu *spu)
{
 if (test_bit(SPU_CONTEXT_FAULT_PENDING, &spu->flags))
  csa->priv2.mfc_control_RW |= MFC_CNTL_RESTART_DMA_COMMAND;
 clear_bit(SPU_CONTEXT_SWITCH_PENDING, &spu->flags);
 mb();
}
