
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zpci_dev {int * util_str; } ;
struct device {int dummy; } ;
struct ccwgroup_device {int * cdev; } ;


 int EBCASC (int *,int) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int PNETIDS_LEN ;
 int * ccw_device_get_util_str (int ,int ) ;
 scalar_t__ dev_is_ccwgroup (struct device*) ;
 scalar_t__ dev_is_pci (struct device*) ;
 int kfree (int *) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;
 int to_pci_dev (struct device*) ;
 struct zpci_dev* to_zpci (int ) ;

__attribute__((used)) static int pnet_ids_by_device(struct device *dev, u8 *pnetids)
{
 memset(pnetids, 0, PNETIDS_LEN);
 if (dev_is_ccwgroup(dev)) {
  struct ccwgroup_device *gdev = to_ccwgroupdev(dev);
  u8 *util_str;

  util_str = ccw_device_get_util_str(gdev->cdev[0], 0);
  if (!util_str)
   return -ENOMEM;
  memcpy(pnetids, util_str, PNETIDS_LEN);
  EBCASC(pnetids, PNETIDS_LEN);
  kfree(util_str);
  return 0;
 }
 if (dev_is_pci(dev)) {
  struct zpci_dev *zdev = to_zpci(to_pci_dev(dev));

  memcpy(pnetids, zdev->util_str, sizeof(zdev->util_str));
  EBCASC(pnetids, sizeof(zdev->util_str));
  return 0;
 }
 return -EOPNOTSUPP;
}
