
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_context {int dummy; } ;
struct TYPE_2__ {int runq_lock; } ;


 int __node_allowed (struct spu_context*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* spu_prio ;

__attribute__((used)) static int node_allowed(struct spu_context *ctx, int node)
{
 int rval;

 spin_lock(&spu_prio->runq_lock);
 rval = __node_allowed(ctx, node);
 spin_unlock(&spu_prio->runq_lock);

 return rval;
}
