
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct td {int dummy; } ;
struct ed {int dummy; } ;
struct admhcd {int * td_cache; void* ed_cache; } ;
struct TYPE_3__ {int controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int ED_ALIGN ;
 int ENOMEM ;
 int TD_ALIGN ;
 TYPE_2__* admhcd_to_hcd (struct admhcd*) ;
 void* dma_pool_create (char*,int ,int,int ,int ) ;
 int dma_pool_destroy (int *) ;

__attribute__((used)) static int admhc_mem_init(struct admhcd *ahcd)
{
 ahcd->td_cache = dma_pool_create("admhc_td",
  admhcd_to_hcd(ahcd)->self.controller,
  sizeof(struct td),
  TD_ALIGN,
  0
  );
 if (!ahcd->td_cache)
  goto err;

 ahcd->ed_cache = dma_pool_create("admhc_ed",
  admhcd_to_hcd(ahcd)->self.controller,
  sizeof(struct ed),
  ED_ALIGN,
  0
  );
 if (!ahcd->ed_cache)
  goto err_td_cache;

 return 0;

err_td_cache:
 dma_pool_destroy(ahcd->td_cache);
 ahcd->td_cache = ((void*)0);
err:
 return -ENOMEM;
}
