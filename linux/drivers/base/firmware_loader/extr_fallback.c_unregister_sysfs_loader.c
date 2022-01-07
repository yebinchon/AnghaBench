
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_unregister (int *) ;
 int firmware_class ;

void unregister_sysfs_loader(void)
{
 class_unregister(&firmware_class);
}
