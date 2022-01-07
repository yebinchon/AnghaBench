
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct zpci_fib {int fmb_addr; int member_0; } ;
struct zpci_dev {int fmb_length; int * fmb; int unmapped_pages; int mapped_pages; int allocated_pages; int fh; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int ZPCI_CREATE_REQ (int ,int ,int ) ;
 int ZPCI_MOD_FC_SET_MEASURE ;
 int atomic64_set (int *,int ) ;
 int kmem_cache_free (int ,int *) ;
 int * kmem_cache_zalloc (int ,int ) ;
 int virt_to_phys (int *) ;
 int zdev_fmb_cache ;
 scalar_t__ zpci_mod_fc (int,struct zpci_fib*,scalar_t__*) ;

int zpci_fmb_enable_device(struct zpci_dev *zdev)
{
 u64 req = ZPCI_CREATE_REQ(zdev->fh, 0, ZPCI_MOD_FC_SET_MEASURE);
 struct zpci_fib fib = {0};
 u8 cc, status;

 if (zdev->fmb || sizeof(*zdev->fmb) < zdev->fmb_length)
  return -EINVAL;

 zdev->fmb = kmem_cache_zalloc(zdev_fmb_cache, GFP_KERNEL);
 if (!zdev->fmb)
  return -ENOMEM;
 WARN_ON((u64) zdev->fmb & 0xf);


 atomic64_set(&zdev->allocated_pages, 0);
 atomic64_set(&zdev->mapped_pages, 0);
 atomic64_set(&zdev->unmapped_pages, 0);

 fib.fmb_addr = virt_to_phys(zdev->fmb);
 cc = zpci_mod_fc(req, &fib, &status);
 if (cc) {
  kmem_cache_free(zdev_fmb_cache, zdev->fmb);
  zdev->fmb = ((void*)0);
 }
 return cc ? -EIO : 0;
}
