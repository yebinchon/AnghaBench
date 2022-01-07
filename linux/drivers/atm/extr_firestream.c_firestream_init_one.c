
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dev; } ;
struct fs_dev {struct fs_dev* next; int flags; struct atm_dev* atm_dev; struct pci_dev* pci_dev; } ;
struct atm_dev {int dummy; } ;


 int ENODEV ;
 int FS_DEBUG_ALLOC ;
 int GFP_KERNEL ;
 int atm_dev_deregister (struct atm_dev*) ;
 struct atm_dev* atm_dev_register (char*,int *,int *,int,int *) ;
 struct fs_dev* fs_boards ;
 int fs_dprintk (int ,char*,struct fs_dev*,int) ;
 scalar_t__ fs_init (struct fs_dev*) ;
 int kfree (struct fs_dev*) ;
 struct fs_dev* kzalloc (int,int ) ;
 int ops ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;

__attribute__((used)) static int firestream_init_one(struct pci_dev *pci_dev,
          const struct pci_device_id *ent)
{
 struct atm_dev *atm_dev;
 struct fs_dev *fs_dev;

 if (pci_enable_device(pci_dev))
  goto err_out;

 fs_dev = kzalloc (sizeof (struct fs_dev), GFP_KERNEL);
 fs_dprintk (FS_DEBUG_ALLOC, "Alloc fs-dev: %p(%zd)\n",
      fs_dev, sizeof (struct fs_dev));
 if (!fs_dev)
  goto err_out;
 atm_dev = atm_dev_register("fs", &pci_dev->dev, &ops, -1, ((void*)0));
 if (!atm_dev)
  goto err_out_free_fs_dev;

 fs_dev->pci_dev = pci_dev;
 fs_dev->atm_dev = atm_dev;
 fs_dev->flags = ent->driver_data;

 if (fs_init(fs_dev))
  goto err_out_free_atm_dev;

 fs_dev->next = fs_boards;
 fs_boards = fs_dev;
 return 0;

 err_out_free_atm_dev:
 atm_dev_deregister(atm_dev);
 err_out_free_fs_dev:
  kfree(fs_dev);
 err_out:
 return -ENODEV;
}
