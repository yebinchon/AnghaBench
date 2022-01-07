
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kobj; int * type; int release; int * driver; } ;
struct TYPE_7__ {char* name; int id; TYPE_1__ dev; } ;
struct ipmi_device_id {int device_id; int product_id; int manufacturer_id; } ;
struct bmc_device {int dyn_id_set; int dyn_guid_set; TYPE_2__ pdev; int dyn_mutex; int usecount; struct ipmi_device_id id; int intfs; scalar_t__ dyn_id_expiry; int guid; int remove_work; } ;
struct ipmi_smi {int in_bmc_register; int intf_num; char* my_dev_name; int bmc_registered; struct bmc_device tmp_bmc; struct bmc_device* bmc; int bmc_link; TYPE_4__* si_dev; int bmc_reg_mutex; } ;
typedef int guid_t ;
struct TYPE_9__ {int kobj; } ;
struct TYPE_8__ {int driver; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IPMI_DYN_DEV_ID_EXPIRY ;
 int bmc_device_type ;
 int cleanup_bmc_device ;
 int cleanup_bmc_work ;
 int dev_err (TYPE_4__*,char*,int) ;
 int dev_info (TYPE_4__*,char*,int ,int ,int ) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ipmi_bmc_ida ;
 struct bmc_device* ipmi_find_bmc_guid (int *,int *) ;
 struct bmc_device* ipmi_find_bmc_prod_dev_id (int *,int ,int ) ;
 TYPE_3__ ipmidriver ;
 int ipmidriver_mutex ;
 scalar_t__ jiffies ;
 char* kasprintf (int ,char*,int) ;
 int kfree (char*) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct bmc_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int platform_device_register (TYPE_2__*) ;
 int put_device (TYPE_1__*) ;
 int release_bmc_device ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_remove_link (int *,char*) ;

__attribute__((used)) static int __ipmi_bmc_register(struct ipmi_smi *intf,
          struct ipmi_device_id *id,
          bool guid_set, guid_t *guid, int intf_num)
{
 int rv;
 struct bmc_device *bmc;
 struct bmc_device *old_bmc;







 intf->in_bmc_register = 1;
 mutex_unlock(&intf->bmc_reg_mutex);





 mutex_lock(&ipmidriver_mutex);
 if (guid_set)
  old_bmc = ipmi_find_bmc_guid(&ipmidriver.driver, guid);
 else
  old_bmc = ipmi_find_bmc_prod_dev_id(&ipmidriver.driver,
          id->product_id,
          id->device_id);





 if (old_bmc) {
  bmc = old_bmc;




  intf->bmc = old_bmc;
  mutex_lock(&bmc->dyn_mutex);
  list_add_tail(&intf->bmc_link, &bmc->intfs);
  mutex_unlock(&bmc->dyn_mutex);

  dev_info(intf->si_dev,
    "interfacing existing BMC (man_id: 0x%6.6x, prod_id: 0x%4.4x, dev_id: 0x%2.2x)\n",
    bmc->id.manufacturer_id,
    bmc->id.product_id,
    bmc->id.device_id);
 } else {
  bmc = kzalloc(sizeof(*bmc), GFP_KERNEL);
  if (!bmc) {
   rv = -ENOMEM;
   goto out;
  }
  INIT_LIST_HEAD(&bmc->intfs);
  mutex_init(&bmc->dyn_mutex);
  INIT_WORK(&bmc->remove_work, cleanup_bmc_work);

  bmc->id = *id;
  bmc->dyn_id_set = 1;
  bmc->dyn_guid_set = guid_set;
  bmc->guid = *guid;
  bmc->dyn_id_expiry = jiffies + IPMI_DYN_DEV_ID_EXPIRY;

  bmc->pdev.name = "ipmi_bmc";

  rv = ida_simple_get(&ipmi_bmc_ida, 0, 0, GFP_KERNEL);
  if (rv < 0)
   goto out;
  bmc->pdev.dev.driver = &ipmidriver.driver;
  bmc->pdev.id = rv;
  bmc->pdev.dev.release = release_bmc_device;
  bmc->pdev.dev.type = &bmc_device_type;
  kref_init(&bmc->usecount);

  intf->bmc = bmc;
  mutex_lock(&bmc->dyn_mutex);
  list_add_tail(&intf->bmc_link, &bmc->intfs);
  mutex_unlock(&bmc->dyn_mutex);

  rv = platform_device_register(&bmc->pdev);
  if (rv) {
   dev_err(intf->si_dev,
    "Unable to register bmc device: %d\n",
    rv);
   goto out_list_del;
  }

  dev_info(intf->si_dev,
    "Found new BMC (man_id: 0x%6.6x, prod_id: 0x%4.4x, dev_id: 0x%2.2x)\n",
    bmc->id.manufacturer_id,
    bmc->id.product_id,
    bmc->id.device_id);
 }





 rv = sysfs_create_link(&intf->si_dev->kobj, &bmc->pdev.dev.kobj, "bmc");
 if (rv) {
  dev_err(intf->si_dev, "Unable to create bmc symlink: %d\n", rv);
  goto out_put_bmc;
 }

 if (intf_num == -1)
  intf_num = intf->intf_num;
 intf->my_dev_name = kasprintf(GFP_KERNEL, "ipmi%d", intf_num);
 if (!intf->my_dev_name) {
  rv = -ENOMEM;
  dev_err(intf->si_dev, "Unable to allocate link from BMC: %d\n",
   rv);
  goto out_unlink1;
 }

 rv = sysfs_create_link(&bmc->pdev.dev.kobj, &intf->si_dev->kobj,
          intf->my_dev_name);
 if (rv) {
  kfree(intf->my_dev_name);
  intf->my_dev_name = ((void*)0);
  dev_err(intf->si_dev, "Unable to create symlink to bmc: %d\n",
   rv);
  goto out_free_my_dev_name;
 }

 intf->bmc_registered = 1;

out:
 mutex_unlock(&ipmidriver_mutex);
 mutex_lock(&intf->bmc_reg_mutex);
 intf->in_bmc_register = 0;
 return rv;


out_free_my_dev_name:
 kfree(intf->my_dev_name);
 intf->my_dev_name = ((void*)0);

out_unlink1:
 sysfs_remove_link(&intf->si_dev->kobj, "bmc");

out_put_bmc:
 mutex_lock(&bmc->dyn_mutex);
 list_del(&intf->bmc_link);
 mutex_unlock(&bmc->dyn_mutex);
 intf->bmc = &intf->tmp_bmc;
 kref_put(&bmc->usecount, cleanup_bmc_device);
 goto out;

out_list_del:
 mutex_lock(&bmc->dyn_mutex);
 list_del(&intf->bmc_link);
 mutex_unlock(&bmc->dyn_mutex);
 intf->bmc = &intf->tmp_bmc;
 put_device(&bmc->pdev.dev);
 goto out;
}
