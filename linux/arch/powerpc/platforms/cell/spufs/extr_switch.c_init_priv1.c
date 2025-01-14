
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mfc_sr1_RW; int int_mask_class0_RW; int int_mask_class1_RW; int int_mask_class2_RW; } ;
struct spu_state {TYPE_1__ priv1; } ;


 int CLASS0_ENABLE_DMA_ALIGNMENT_INTR ;
 int CLASS0_ENABLE_INVALID_DMA_COMMAND_INTR ;
 int CLASS0_ENABLE_SPU_ERROR_INTR ;
 int CLASS1_ENABLE_SEGMENT_FAULT_INTR ;
 int CLASS1_ENABLE_STORAGE_FAULT_INTR ;
 int CLASS2_ENABLE_SPU_DMA_TAG_GROUP_COMPLETE_INTR ;
 int CLASS2_ENABLE_SPU_HALT_INTR ;
 int CLASS2_ENABLE_SPU_STOP_INTR ;
 int MFC_STATE1_BUS_TLBIE_MASK ;
 int MFC_STATE1_LOCAL_STORAGE_DECODE_MASK ;
 int MFC_STATE1_MASTER_RUN_CONTROL_MASK ;
 int MFC_STATE1_PROBLEM_STATE_MASK ;
 int MFC_STATE1_RELOCATE_MASK ;

__attribute__((used)) static void init_priv1(struct spu_state *csa)
{

 csa->priv1.mfc_sr1_RW = MFC_STATE1_LOCAL_STORAGE_DECODE_MASK |
     MFC_STATE1_MASTER_RUN_CONTROL_MASK |
     MFC_STATE1_PROBLEM_STATE_MASK |
     MFC_STATE1_RELOCATE_MASK | MFC_STATE1_BUS_TLBIE_MASK;


 csa->priv1.int_mask_class0_RW = CLASS0_ENABLE_DMA_ALIGNMENT_INTR |
     CLASS0_ENABLE_INVALID_DMA_COMMAND_INTR |
     CLASS0_ENABLE_SPU_ERROR_INTR;
 csa->priv1.int_mask_class1_RW = CLASS1_ENABLE_SEGMENT_FAULT_INTR |
     CLASS1_ENABLE_STORAGE_FAULT_INTR;
 csa->priv1.int_mask_class2_RW = CLASS2_ENABLE_SPU_STOP_INTR |
     CLASS2_ENABLE_SPU_HALT_INTR |
     CLASS2_ENABLE_SPU_DMA_TAG_GROUP_COMPLETE_INTR;
}
