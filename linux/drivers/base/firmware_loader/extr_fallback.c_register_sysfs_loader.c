
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int class_register (int *) ;
 int firmware_class ;

int register_sysfs_loader(void)
{
 return class_register(&firmware_class);
}
