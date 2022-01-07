
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ed {int dma; } ;
struct admhcd {int ed_cache; } ;


 int dma_pool_free (int ,struct ed*,int ) ;

__attribute__((used)) static void ed_free(struct admhcd *ahcd, struct ed *ed)
{
 dma_pool_free(ahcd->ed_cache, ed, ed->dma);
}
