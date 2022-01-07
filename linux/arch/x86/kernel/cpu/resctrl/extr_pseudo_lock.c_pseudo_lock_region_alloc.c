
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseudo_lock_region {scalar_t__ size; int kmem; } ;


 int E2BIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ KMALLOC_MAX_SIZE ;
 int kzalloc (scalar_t__,int ) ;
 int pseudo_lock_region_clear (struct pseudo_lock_region*) ;
 int pseudo_lock_region_init (struct pseudo_lock_region*) ;
 int rdt_last_cmd_puts (char*) ;

__attribute__((used)) static int pseudo_lock_region_alloc(struct pseudo_lock_region *plr)
{
 int ret;

 ret = pseudo_lock_region_init(plr);
 if (ret < 0)
  return ret;





 if (plr->size > KMALLOC_MAX_SIZE) {
  rdt_last_cmd_puts("Requested region exceeds maximum size\n");
  ret = -E2BIG;
  goto out_region;
 }

 plr->kmem = kzalloc(plr->size, GFP_KERNEL);
 if (!plr->kmem) {
  rdt_last_cmd_puts("Unable to allocate memory\n");
  ret = -ENOMEM;
  goto out_region;
 }

 ret = 0;
 goto out;
out_region:
 pseudo_lock_region_clear(plr);
out:
 return ret;
}
