
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spu_context {struct spu* spu; } ;
struct spu {int register_lock; } ;


 int MFC_STATE1_MASTER_RUN_CONTROL_MASK ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int spu_mfc_sr1_get (struct spu*) ;
 int spu_mfc_sr1_set (struct spu*,int) ;

__attribute__((used)) static void spu_hw_master_stop(struct spu_context *ctx)
{
 struct spu *spu = ctx->spu;
 u64 sr1;

 spin_lock_irq(&spu->register_lock);
 sr1 = spu_mfc_sr1_get(spu) & ~MFC_STATE1_MASTER_RUN_CONTROL_MASK;
 spu_mfc_sr1_set(spu, sr1);
 spin_unlock_irq(&spu->register_lock);
}
