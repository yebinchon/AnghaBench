
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int class_groups; int class_release; int owner; int name; } ;


 int DRIVER_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 TYPE_1__* class_pktcdvd ;
 int class_pktcdvd_groups ;
 int class_pktcdvd_release ;
 int class_register (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int pkt_sysfs_init(void)
{
 int ret = 0;





 class_pktcdvd = kzalloc(sizeof(*class_pktcdvd), GFP_KERNEL);
 if (!class_pktcdvd)
  return -ENOMEM;
 class_pktcdvd->name = DRIVER_NAME;
 class_pktcdvd->owner = THIS_MODULE;
 class_pktcdvd->class_release = class_pktcdvd_release;
 class_pktcdvd->class_groups = class_pktcdvd_groups;
 ret = class_register(class_pktcdvd);
 if (ret) {
  kfree(class_pktcdvd);
  class_pktcdvd = ((void*)0);
  pr_err("failed to create class pktcdvd\n");
  return ret;
 }
 return 0;
}
