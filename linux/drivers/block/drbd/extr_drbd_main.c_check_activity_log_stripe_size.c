
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct meta_data_on_disk {int al_stripe_size_4k; int al_stripes; } ;
struct drbd_md {int al_stripe_size_4k; int al_stripes; int al_size_4k; } ;
struct drbd_device {int dummy; } ;


 int EINVAL ;
 int MD_32kB_SECT ;
 int be32_to_cpu (int ) ;
 int drbd_err (struct drbd_device*,char*,int,int) ;

__attribute__((used)) static int check_activity_log_stripe_size(struct drbd_device *device,
  struct meta_data_on_disk *on_disk,
  struct drbd_md *in_core)
{
 u32 al_stripes = be32_to_cpu(on_disk->al_stripes);
 u32 al_stripe_size_4k = be32_to_cpu(on_disk->al_stripe_size_4k);
 u64 al_size_4k;


 if (al_stripes == 0 && al_stripe_size_4k == 0) {
  al_stripes = 1;
  al_stripe_size_4k = MD_32kB_SECT/8;
 }




 if (al_stripes == 0 || al_stripe_size_4k == 0)
  goto err;

 al_size_4k = (u64)al_stripes * al_stripe_size_4k;





 if (al_size_4k > (16 * 1024 * 1024/4))
  goto err;



 if (al_size_4k < MD_32kB_SECT/8)
  goto err;

 in_core->al_stripe_size_4k = al_stripe_size_4k;
 in_core->al_stripes = al_stripes;
 in_core->al_size_4k = al_size_4k;

 return 0;
err:
 drbd_err(device, "invalid activity log striping: al_stripes=%u, al_stripe_size_4k=%u\n",
   al_stripes, al_stripe_size_4k);
 return -EINVAL;
}
