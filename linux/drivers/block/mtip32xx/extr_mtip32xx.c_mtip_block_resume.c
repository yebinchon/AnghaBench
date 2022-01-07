
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct driver_data {TYPE_2__* disk; TYPE_1__* pdev; } ;
struct TYPE_4__ {int disk_name; } ;
struct TYPE_3__ {int dev; } ;


 int dev_info (int *,char*,int ) ;
 int mtip_hw_resume (struct driver_data*) ;

__attribute__((used)) static int mtip_block_resume(struct driver_data *dd)
{
 dev_info(&dd->pdev->dev, "Resuming %s ...\n",
  dd->disk->disk_name);
 mtip_hw_resume(dd);
 return 0;
}
