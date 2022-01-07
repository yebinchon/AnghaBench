
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_4__ {int mode; int name; } ;
struct device_attribute {scalar_t__ store; TYPE_2__ attr; scalar_t__ show; } ;
struct counter_device_attr {int l; int component; struct device_attribute dev_attr; } ;
struct counter_attr_parm {TYPE_1__* group; int component; scalar_t__ store; scalar_t__ show; int name; int prefix; } ;
struct TYPE_3__ {int num_attr; struct list_head attr_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kasprintf (int ,char*,int ,int ) ;
 int kfree (struct counter_device_attr*) ;
 struct counter_device_attr* kzalloc (int,int ) ;
 int list_add (int *,struct list_head* const) ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static int counter_attribute_create(const struct counter_attr_parm *const parm)
{
 struct counter_device_attr *counter_attr;
 struct device_attribute *dev_attr;
 int err;
 struct list_head *const attr_list = &parm->group->attr_list;


 counter_attr = kzalloc(sizeof(*counter_attr), GFP_KERNEL);
 if (!counter_attr)
  return -ENOMEM;
 dev_attr = &counter_attr->dev_attr;

 sysfs_attr_init(&dev_attr->attr);


 dev_attr->attr.name = kasprintf(GFP_KERNEL, "%s%s", parm->prefix,
     parm->name);
 if (!dev_attr->attr.name) {
  err = -ENOMEM;
  goto err_free_counter_attr;
 }
 if (parm->show) {
  dev_attr->attr.mode |= 0444;
  dev_attr->show = parm->show;
 }
 if (parm->store) {
  dev_attr->attr.mode |= 0200;
  dev_attr->store = parm->store;
 }


 counter_attr->component = parm->component;


 list_add(&counter_attr->l, attr_list);
 parm->group->num_attr++;

 return 0;

err_free_counter_attr:
 kfree(counter_attr);
 return err;
}
