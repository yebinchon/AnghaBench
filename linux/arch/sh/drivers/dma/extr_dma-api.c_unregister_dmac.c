
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_info {unsigned int nr_channels; int flags; int pdev; int list; scalar_t__ channels; } ;


 int DMAC_CHANNELS_CONFIGURED ;
 int dma_remove_sysfs_files (scalar_t__,struct dma_info*) ;
 int kfree (scalar_t__) ;
 int list_del (int *) ;
 int platform_device_unregister (int ) ;

void unregister_dmac(struct dma_info *info)
{
 unsigned int i;

 for (i = 0; i < info->nr_channels; i++)
  dma_remove_sysfs_files(info->channels + i, info);

 if (!(info->flags & DMAC_CHANNELS_CONFIGURED))
  kfree(info->channels);

 list_del(&info->list);
 platform_device_unregister(info->pdev);
}
