
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spu {size_t node; TYPE_1__* ctx; } ;
struct TYPE_4__ {int list_mutex; } ;
struct TYPE_3__ {int flags; } ;


 int BUG_ON (int) ;
 int SPU_CREATE_NOSCHED ;
 TYPE_2__* cbe_spu_info ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static inline int sched_spu(struct spu *spu)
{
 BUG_ON(!mutex_is_locked(&cbe_spu_info[spu->node].list_mutex));

 return (!spu->ctx || !(spu->ctx->flags & SPU_CREATE_NOSCHED));
}
