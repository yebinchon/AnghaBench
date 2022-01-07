
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mem_pool {int dummy; } ;
struct index_state {struct mem_pool* ce_mem_pool; TYPE_2__* split_index; } ;
struct TYPE_4__ {TYPE_1__* base; } ;
struct TYPE_3__ {struct mem_pool* ce_mem_pool; } ;


 int mem_pool_init (struct mem_pool**,int ) ;

__attribute__((used)) static struct mem_pool *find_mem_pool(struct index_state *istate)
{
 struct mem_pool **pool_ptr;

 if (istate->split_index && istate->split_index->base)
  pool_ptr = &istate->split_index->base->ce_mem_pool;
 else
  pool_ptr = &istate->ce_mem_pool;

 if (!*pool_ptr)
  mem_pool_init(pool_ptr, 0);

 return *pool_ptr;
}
