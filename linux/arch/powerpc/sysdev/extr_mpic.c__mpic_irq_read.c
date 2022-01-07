
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct mpic {unsigned int isu_shift; unsigned int isu_mask; unsigned int* isu_reg0_shadow; int * isus; int reg_type; } ;


 int IRQ_STRIDE ;
 unsigned int MPIC_INFO (int ) ;
 unsigned int MPIC_VECPRI_ACTIVITY ;
 unsigned int MPIC_VECPRI_MASK ;
 unsigned int _mpic_read (int ,int *,unsigned int) ;

__attribute__((used)) static inline u32 _mpic_irq_read(struct mpic *mpic, unsigned int src_no, unsigned int reg)
{
 unsigned int isu = src_no >> mpic->isu_shift;
 unsigned int idx = src_no & mpic->isu_mask;
 unsigned int val;

 val = _mpic_read(mpic->reg_type, &mpic->isus[isu],
    reg + (idx * MPIC_INFO(IRQ_STRIDE)));





 return val;
}
