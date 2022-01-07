
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct miscdevice {int minor; int list; } ;


 int DYNAMIC_MINORS ;
 int MISC_MAJOR ;
 int MKDEV (int ,int) ;
 scalar_t__ WARN_ON (int ) ;
 int clear_bit (int,int ) ;
 int device_destroy (int ,int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int misc_class ;
 int misc_minors ;
 int misc_mtx ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void misc_deregister(struct miscdevice *misc)
{
 int i = DYNAMIC_MINORS - misc->minor - 1;

 if (WARN_ON(list_empty(&misc->list)))
  return;

 mutex_lock(&misc_mtx);
 list_del(&misc->list);
 device_destroy(misc_class, MKDEV(MISC_MAJOR, misc->minor));
 if (i < DYNAMIC_MINORS && i >= 0)
  clear_bit(i, misc_minors);
 mutex_unlock(&misc_mtx);
}
