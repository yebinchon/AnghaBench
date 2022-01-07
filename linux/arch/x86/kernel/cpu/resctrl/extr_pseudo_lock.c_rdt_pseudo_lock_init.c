
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int devnode; } ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int THIS_MODULE ;
 TYPE_1__* class_create (int ,char*) ;
 TYPE_1__* pseudo_lock_class ;
 int pseudo_lock_dev_fops ;
 int pseudo_lock_devnode ;
 int pseudo_lock_major ;
 int register_chrdev (int ,char*,int *) ;
 int unregister_chrdev (int,char*) ;

int rdt_pseudo_lock_init(void)
{
 int ret;

 ret = register_chrdev(0, "pseudo_lock", &pseudo_lock_dev_fops);
 if (ret < 0)
  return ret;

 pseudo_lock_major = ret;

 pseudo_lock_class = class_create(THIS_MODULE, "pseudo_lock");
 if (IS_ERR(pseudo_lock_class)) {
  ret = PTR_ERR(pseudo_lock_class);
  unregister_chrdev(pseudo_lock_major, "pseudo_lock");
  return ret;
 }

 pseudo_lock_class->devnode = pseudo_lock_devnode;
 return 0;
}
