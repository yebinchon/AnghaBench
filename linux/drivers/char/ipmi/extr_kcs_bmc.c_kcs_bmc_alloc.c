
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * fops; int name; int minor; } ;
struct kcs_bmc {TYPE_1__ miscdev; void* kbuffer; void* data_out; void* data_in; int queue; int mutex; int channel; int lock; } ;
struct device {int dummy; } ;


 int DEVICE_NAME ;
 int GFP_KERNEL ;
 int KCS_MSG_BUFSIZ ;
 int MISC_DYNAMIC_MINOR ;
 int devm_kasprintf (struct device*,int ,char*,int ,int ) ;
 void* devm_kmalloc (struct device*,int ,int ) ;
 struct kcs_bmc* devm_kzalloc (struct device*,int,int ) ;
 int init_waitqueue_head (int *) ;
 int kcs_bmc_fops ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32 channel)
{
 struct kcs_bmc *kcs_bmc;

 kcs_bmc = devm_kzalloc(dev, sizeof(*kcs_bmc) + sizeof_priv, GFP_KERNEL);
 if (!kcs_bmc)
  return ((void*)0);

 spin_lock_init(&kcs_bmc->lock);
 kcs_bmc->channel = channel;

 mutex_init(&kcs_bmc->mutex);
 init_waitqueue_head(&kcs_bmc->queue);

 kcs_bmc->data_in = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
 kcs_bmc->data_out = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);
 kcs_bmc->kbuffer = devm_kmalloc(dev, KCS_MSG_BUFSIZ, GFP_KERNEL);

 kcs_bmc->miscdev.minor = MISC_DYNAMIC_MINOR;
 kcs_bmc->miscdev.name = devm_kasprintf(dev, GFP_KERNEL, "%s%u",
            DEVICE_NAME, channel);
 if (!kcs_bmc->data_in || !kcs_bmc->data_out || !kcs_bmc->kbuffer ||
     !kcs_bmc->miscdev.name)
  return ((void*)0);
 kcs_bmc->miscdev.fops = &kcs_bmc_fops;

 return kcs_bmc;
}
