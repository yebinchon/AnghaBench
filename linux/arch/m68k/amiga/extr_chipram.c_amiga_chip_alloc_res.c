
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;


 unsigned long PAGE_ALIGN (unsigned long) ;
 int PAGE_SIZE ;
 int UINT_MAX ;
 void* ZTWO_VADDR (int ) ;
 int allocate_resource (int *,struct resource*,unsigned long,int ,int ,int ,int *,int *) ;
 int atomic_sub (unsigned long,int *) ;
 int chipavail ;
 int chipram_res ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int) ;

void *amiga_chip_alloc_res(unsigned long size, struct resource *res)
{
 int error;


 size = PAGE_ALIGN(size);

 pr_debug("amiga_chip_alloc_res: allocate %lu bytes\n", size);
 error = allocate_resource(&chipram_res, res, size, 0, UINT_MAX,
      PAGE_SIZE, ((void*)0), ((void*)0));
 if (error < 0) {
  pr_err("amiga_chip_alloc_res: allocate_resource() failed %d!\n",
         error);
  return ((void*)0);
 }

 atomic_sub(size, &chipavail);
 pr_debug("amiga_chip_alloc_res: returning %pR\n", res);
 return ZTWO_VADDR(res->start);
}
