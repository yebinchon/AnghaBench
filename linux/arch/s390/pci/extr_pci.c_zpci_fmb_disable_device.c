
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct zpci_fib {int member_0; } ;
struct zpci_dev {int * fmb; int fh; } ;


 int EINVAL ;
 int EIO ;
 int ZPCI_CREATE_REQ (int ,int ,int ) ;
 int ZPCI_MOD_FC_SET_MEASURE ;
 int kmem_cache_free (int ,int *) ;
 int zdev_fmb_cache ;
 int zpci_mod_fc (int ,struct zpci_fib*,int*) ;

int zpci_fmb_disable_device(struct zpci_dev *zdev)
{
 u64 req = ZPCI_CREATE_REQ(zdev->fh, 0, ZPCI_MOD_FC_SET_MEASURE);
 struct zpci_fib fib = {0};
 u8 cc, status;

 if (!zdev->fmb)
  return -EINVAL;


 cc = zpci_mod_fc(req, &fib, &status);
 if (cc == 3)
  cc = 0;

 if (!cc) {
  kmem_cache_free(zdev_fmb_cache, zdev->fmb);
  zdev->fmb = ((void*)0);
 }
 return cc ? -EIO : 0;
}
