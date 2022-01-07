
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_device {int dev; int soc_dev_num; } ;


 int device_unregister (int *) ;
 int * early_soc_dev_attr ;
 int ida_simple_remove (int *,int ) ;
 int soc_ida ;

void soc_device_unregister(struct soc_device *soc_dev)
{
 ida_simple_remove(&soc_ida, soc_dev->soc_dev_num);

 device_unregister(&soc_dev->dev);
 early_soc_dev_attr = ((void*)0);
}
