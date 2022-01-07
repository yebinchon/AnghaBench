
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_7__ {int release; struct device_node* of_node; int parent; int * bus; } ;
struct sunxi_rsb_device {TYPE_1__ dev; int rtaddr; int hwaddr; struct sunxi_rsb* rsb; } ;
struct sunxi_rsb {int dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 struct sunxi_rsb_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int RSB_CTRL_NAME ;
 int dev_dbg (TYPE_1__*,char*,int ) ;
 int dev_err (TYPE_1__*,char*,int ,int) ;
 int dev_name (TYPE_1__*) ;
 int dev_set_name (TYPE_1__*,char*,int ,int ) ;
 int device_register (TYPE_1__*) ;
 struct sunxi_rsb_device* kzalloc (int,int ) ;
 int put_device (TYPE_1__*) ;
 int sunxi_rsb_bus ;
 int sunxi_rsb_dev_release ;

__attribute__((used)) static struct sunxi_rsb_device *sunxi_rsb_device_create(struct sunxi_rsb *rsb,
  struct device_node *node, u16 hwaddr, u8 rtaddr)
{
 int err;
 struct sunxi_rsb_device *rdev;

 rdev = kzalloc(sizeof(*rdev), GFP_KERNEL);
 if (!rdev)
  return ERR_PTR(-ENOMEM);

 rdev->rsb = rsb;
 rdev->hwaddr = hwaddr;
 rdev->rtaddr = rtaddr;
 rdev->dev.bus = &sunxi_rsb_bus;
 rdev->dev.parent = rsb->dev;
 rdev->dev.of_node = node;
 rdev->dev.release = sunxi_rsb_dev_release;

 dev_set_name(&rdev->dev, "%s-%x", RSB_CTRL_NAME, hwaddr);

 err = device_register(&rdev->dev);
 if (err < 0) {
  dev_err(&rdev->dev, "Can't add %s, status %d\n",
   dev_name(&rdev->dev), err);
  goto err_device_add;
 }

 dev_dbg(&rdev->dev, "device %s registered\n", dev_name(&rdev->dev));

err_device_add:
 put_device(&rdev->dev);

 return ERR_PTR(err);
}
