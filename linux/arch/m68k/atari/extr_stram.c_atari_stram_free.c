
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 unsigned long atari_stram_to_phys (void*) ;
 int kfree (struct resource*) ;
 struct resource* lookup_resource (int *,unsigned long) ;
 int pr_debug (char*,unsigned long,void*) ;
 int pr_err (char*,void*) ;
 int release_resource (struct resource*) ;
 unsigned long resource_size (struct resource*) ;
 int stram_pool ;

void atari_stram_free(void *addr)
{
 unsigned long start = atari_stram_to_phys(addr);
 struct resource *res;
 unsigned long size;

 res = lookup_resource(&stram_pool, start);
 if (!res) {
  pr_err("atari_stram_free: trying to free nonexistent region "
         "at %p\n", addr);
  return;
 }

 size = resource_size(res);
 pr_debug("atari_stram_free: free %lu bytes at %p\n", size, addr);
 release_resource(res);
 kfree(res);
}
