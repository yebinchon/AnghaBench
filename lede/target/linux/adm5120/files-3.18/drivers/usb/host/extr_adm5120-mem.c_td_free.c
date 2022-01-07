
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td {int hwINFO; int flags; int td_dma; struct td* td_hash; } ;
struct admhcd {int td_cache; struct td** td_hash; } ;


 int TD_DONE ;
 int TD_FLAG_DONE ;
 size_t TD_HASH_FUNC (int ) ;
 int admhc_dbg (struct admhcd*,char*,struct td*) ;
 int cpu_to_hc32 (struct admhcd*,int ) ;
 int dma_pool_free (int ,struct td*,int ) ;

__attribute__((used)) static void td_free(struct admhcd *ahcd, struct td *td)
{
 struct td **prev = &ahcd->td_hash[TD_HASH_FUNC(td->td_dma)];

 while (*prev && *prev != td)
  prev = &(*prev)->td_hash;
 if (*prev)
  *prev = td->td_hash;





 else if ((td->flags & TD_FLAG_DONE) != 0)
  admhc_dbg(ahcd, "no hash for td %p\n", td);

 dma_pool_free(ahcd->td_cache, td, td->td_dma);
}
