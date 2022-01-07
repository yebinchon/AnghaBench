
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arasan_cf_dev {int dma_completion; } ;


 int complete (int *) ;

__attribute__((used)) static void dma_callback(void *dev)
{
 struct arasan_cf_dev *acdev = dev;

 complete(&acdev->dma_completion);
}
