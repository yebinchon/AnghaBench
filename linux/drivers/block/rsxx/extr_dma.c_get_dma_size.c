
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cnt; } ;
struct rsxx_dma {TYPE_1__ sub_page; } ;


 unsigned int RSXX_HW_BLK_SIZE ;

__attribute__((used)) static unsigned int get_dma_size(struct rsxx_dma *dma)
{
 if (dma->sub_page.cnt)
  return dma->sub_page.cnt << 9;
 else
  return RSXX_HW_BLK_SIZE;
}
