
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * aoe_debugfs_dir ;
 int buf_pool_cache ;
 int debugfs_remove_recursive (int *) ;
 int kmem_cache_destroy (int ) ;

void
aoeblk_exit(void)
{
 debugfs_remove_recursive(aoe_debugfs_dir);
 aoe_debugfs_dir = ((void*)0);
 kmem_cache_destroy(buf_pool_cache);
}
