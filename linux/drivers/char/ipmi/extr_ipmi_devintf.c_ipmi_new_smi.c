
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_reg_list {int link; int dev; } ;
struct device {int dummy; } ;
typedef int dev_t ;


 int GFP_KERNEL ;
 int MKDEV (int ,int) ;
 int device_create (int ,struct device*,int ,int *,char*,int) ;
 int ipmi_class ;
 int ipmi_major ;
 struct ipmi_reg_list* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int reg_list ;
 int reg_list_mutex ;

__attribute__((used)) static void ipmi_new_smi(int if_num, struct device *device)
{
 dev_t dev = MKDEV(ipmi_major, if_num);
 struct ipmi_reg_list *entry;

 entry = kmalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry) {
  pr_err("ipmi_devintf: Unable to create the ipmi class device link\n");
  return;
 }
 entry->dev = dev;

 mutex_lock(&reg_list_mutex);
 device_create(ipmi_class, device, dev, ((void*)0), "ipmi%d", if_num);
 list_add(&entry->link, &reg_list);
 mutex_unlock(&reg_list_mutex);
}
