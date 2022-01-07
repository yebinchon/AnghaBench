
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_device {int sglist_cache; } ;
struct fit_sg_descriptor {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int skd_free_dma (struct skd_device*,int ,struct fit_sg_descriptor*,int ,int ) ;

__attribute__((used)) static void skd_free_sg_list(struct skd_device *skdev,
        struct fit_sg_descriptor *sg_list,
        dma_addr_t dma_addr)
{
 if (WARN_ON_ONCE(!sg_list))
  return;

 skd_free_dma(skdev, skdev->sglist_cache, sg_list, dma_addr,
       DMA_TO_DEVICE);
}
