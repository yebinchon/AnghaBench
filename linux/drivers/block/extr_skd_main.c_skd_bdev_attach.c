
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {int disk; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int device_add_disk (struct device*,int ,int *) ;

__attribute__((used)) static int skd_bdev_attach(struct device *parent, struct skd_device *skdev)
{
 dev_dbg(&skdev->pdev->dev, "add_disk\n");
 device_add_disk(parent, skdev->disk, ((void*)0));
 return 0;
}
