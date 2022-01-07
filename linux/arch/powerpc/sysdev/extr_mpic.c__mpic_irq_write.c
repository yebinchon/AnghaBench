
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic {unsigned int isu_shift; unsigned int isu_mask; int* isu_reg0_shadow; int * isus; int reg_type; } ;


 int IRQ_STRIDE ;
 unsigned int MPIC_INFO (int ) ;
 int MPIC_VECPRI_ACTIVITY ;
 int MPIC_VECPRI_MASK ;
 int _mpic_write (int ,int *,unsigned int,int) ;

__attribute__((used)) static inline void _mpic_irq_write(struct mpic *mpic, unsigned int src_no,
       unsigned int reg, u32 value)
{
 unsigned int isu = src_no >> mpic->isu_shift;
 unsigned int idx = src_no & mpic->isu_mask;

 _mpic_write(mpic->reg_type, &mpic->isus[isu],
      reg + (idx * MPIC_INFO(IRQ_STRIDE)), value);






}
