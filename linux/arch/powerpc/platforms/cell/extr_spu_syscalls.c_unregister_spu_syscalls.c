
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spufs_calls {scalar_t__ owner; } ;
struct TYPE_3__ {scalar_t__ owner; } ;


 int BUG_ON (int) ;
 int RCU_INIT_POINTER (TYPE_1__*,int *) ;
 TYPE_1__* spufs_calls ;
 int synchronize_rcu () ;

void unregister_spu_syscalls(struct spufs_calls *calls)
{
 BUG_ON(spufs_calls->owner != calls->owner);
 RCU_INIT_POINTER(spufs_calls, ((void*)0));
 synchronize_rcu();
}
