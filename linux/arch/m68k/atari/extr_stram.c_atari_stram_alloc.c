
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {char const* name; int start; } ;


 int GFP_KERNEL ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_SIZE ;
 int UINT_MAX ;
 int allocate_resource (int *,struct resource*,unsigned long,int ,int ,int ,int *,int *) ;
 void* atari_stram_to_virt (int ) ;
 int kfree (struct resource*) ;
 struct resource* kzalloc (int,int ) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int) ;
 int stram_pool ;

void *atari_stram_alloc(unsigned long size, const char *owner)
{
 struct resource *res;
 int error;

 pr_debug("atari_stram_alloc: allocate %lu bytes\n", size);


 size = PAGE_ALIGN(size);

 res = kzalloc(sizeof(struct resource), GFP_KERNEL);
 if (!res)
  return ((void*)0);

 res->name = owner;
 error = allocate_resource(&stram_pool, res, size, 0, UINT_MAX,
      PAGE_SIZE, ((void*)0), ((void*)0));
 if (error < 0) {
  pr_err("atari_stram_alloc: allocate_resource() failed %d!\n",
         error);
  kfree(res);
  return ((void*)0);
 }

 pr_debug("atari_stram_alloc: returning %pR\n", res);
 return atari_stram_to_virt(res->start);
}
