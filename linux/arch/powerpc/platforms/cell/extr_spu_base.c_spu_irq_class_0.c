
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu {unsigned long class_0_pending; int register_lock; scalar_t__ class_0_dar; int (* stop_callback ) (struct spu*,int ) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 unsigned long spu_int_mask_get (struct spu*,int ) ;
 int spu_int_stat_clear (struct spu*,int ,unsigned long) ;
 unsigned long spu_int_stat_get (struct spu*,int ) ;
 scalar_t__ spu_mfc_dar_get (struct spu*) ;
 int stub1 (struct spu*,int ) ;

__attribute__((used)) static irqreturn_t
spu_irq_class_0(int irq, void *data)
{
 struct spu *spu;
 unsigned long stat, mask;

 spu = data;

 spin_lock(&spu->register_lock);
 mask = spu_int_mask_get(spu, 0);
 stat = spu_int_stat_get(spu, 0) & mask;

 spu->class_0_pending |= stat;
 spu->class_0_dar = spu_mfc_dar_get(spu);
 spu->stop_callback(spu, 0);
 spu->class_0_pending = 0;
 spu->class_0_dar = 0;

 spu_int_stat_clear(spu, 0, stat);
 spin_unlock(&spu->register_lock);

 return IRQ_HANDLED;
}
