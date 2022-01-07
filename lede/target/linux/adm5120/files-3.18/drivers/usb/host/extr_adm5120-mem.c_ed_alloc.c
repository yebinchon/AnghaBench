
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ed {int urb_list; int td_list; int dma; } ;
struct admhcd {int ed_cache; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int INIT_LIST_HEAD (int *) ;
 struct ed* dma_pool_alloc (int ,int ,int *) ;
 int memset (struct ed*,int ,int) ;

__attribute__((used)) static struct ed *ed_alloc(struct admhcd *ahcd, gfp_t mem_flags)
{
 dma_addr_t dma;
 struct ed *ed;

 ed = dma_pool_alloc(ahcd->ed_cache, mem_flags, &dma);
 if (!ed)
  return ((void*)0);

 memset(ed, 0, sizeof(*ed));
 ed->dma = dma;

 INIT_LIST_HEAD(&ed->td_list);
 INIT_LIST_HEAD(&ed->urb_list);

 return ed;
}
