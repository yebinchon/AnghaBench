
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfq_pool ;
 int kmem_cache_destroy (int ) ;

__attribute__((used)) static void bfq_slab_kill(void)
{
 kmem_cache_destroy(bfq_pool);
}
