
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 unsigned long ZTWO_PADDR (void*) ;
 int atomic_add (unsigned long,int *) ;
 int chipavail ;
 int chipram_res ;
 int kfree (struct resource*) ;
 struct resource* lookup_resource (int *,unsigned long) ;
 int pr_debug (char*,unsigned long,void*) ;
 int pr_err (char*,void*) ;
 int release_resource (struct resource*) ;
 unsigned long resource_size (struct resource*) ;

void amiga_chip_free(void *ptr)
{
 unsigned long start = ZTWO_PADDR(ptr);
 struct resource *res;
 unsigned long size;

 res = lookup_resource(&chipram_res, start);
 if (!res) {
  pr_err("amiga_chip_free: trying to free nonexistent region at "
         "%p\n", ptr);
  return;
 }

 size = resource_size(res);
 pr_debug("amiga_chip_free: free %lu bytes at %p\n", size, ptr);
 atomic_add(size, &chipavail);
 release_resource(res);
 kfree(res);
}
