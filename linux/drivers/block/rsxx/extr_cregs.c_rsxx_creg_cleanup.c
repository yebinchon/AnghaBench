
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int creg_cmd_pool ;
 int kmem_cache_destroy (int ) ;

void rsxx_creg_cleanup(void)
{
 kmem_cache_destroy(creg_cmd_pool);
}
