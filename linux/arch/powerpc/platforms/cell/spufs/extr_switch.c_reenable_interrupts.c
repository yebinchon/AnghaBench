
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_mask_class2_RW; int int_mask_class1_RW; int int_mask_class0_RW; } ;
struct spu_state {TYPE_1__ priv1; } ;
struct spu {int register_lock; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int spu_int_mask_set (struct spu*,int,int ) ;

__attribute__((used)) static inline void reenable_interrupts(struct spu_state *csa, struct spu *spu)
{



 spin_lock_irq(&spu->register_lock);
 spu_int_mask_set(spu, 0, csa->priv1.int_mask_class0_RW);
 spu_int_mask_set(spu, 1, csa->priv1.int_mask_class1_RW);
 spu_int_mask_set(spu, 2, csa->priv1.int_mask_class2_RW);
 spin_unlock_irq(&spu->register_lock);
}
