
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macio_chip {scalar_t__ type; unsigned long flags; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ model_id; } ;


 long ENODEV ;
 long EPERM ;
 unsigned long HRW_RESET_SCC ;
 unsigned long HRW_SCC_TRANS_EN_N ;
 int LOCK (unsigned long) ;
 unsigned long MACIO_FLAG_SCCA_ON ;
 unsigned long MACIO_FLAG_SCCB_ON ;
 int MACIO_FLAG_SCC_LOCKED ;
 unsigned long MACIO_IN32 (int ) ;
 int MACIO_OUT32 (int ,unsigned long) ;
 int OHARE_FCR ;
 unsigned long OH_SCCA_IO ;
 unsigned long OH_SCCB_IO ;
 unsigned long OH_SCC_ENABLE ;
 unsigned long OH_SCC_RESET ;
 long PMAC_SCC_FLAG_XMON ;
 long PMAC_SCC_IRDA ;
 scalar_t__ PMAC_TYPE_YIKES ;
 scalar_t__ PMAC_TYPE_YOSEMITE ;
 int UNLOCK (unsigned long) ;
 struct macio_chip* macio_find (struct device_node*,int ) ;
 scalar_t__ macio_gatwick ;
 scalar_t__ macio_heathrow ;
 scalar_t__ macio_paddington ;
 int mdelay (int) ;
 scalar_t__ of_node_name_eq (struct device_node*,char*) ;
 TYPE_1__ pmac_mb ;
 int pmu_enable_irled (int) ;

__attribute__((used)) static long ohare_htw_scc_enable(struct device_node *node, long param,
     long value)
{
 struct macio_chip* macio;
 unsigned long chan_mask;
 unsigned long fcr;
 unsigned long flags;
 int htw, trans;
 unsigned long rmask;

 macio = macio_find(node, 0);
 if (!macio)
  return -ENODEV;
 if (of_node_name_eq(node, "ch-a"))
  chan_mask = MACIO_FLAG_SCCA_ON;
 else if (of_node_name_eq(node, "ch-b"))
  chan_mask = MACIO_FLAG_SCCB_ON;
 else
  return -ENODEV;

 htw = (macio->type == macio_heathrow || macio->type == macio_paddington
  || macio->type == macio_gatwick);

 trans = (pmac_mb.model_id != PMAC_TYPE_YOSEMITE &&
   pmac_mb.model_id != PMAC_TYPE_YIKES);
 if (value) {




  LOCK(flags);
  fcr = MACIO_IN32(OHARE_FCR);

  if (!(fcr & OH_SCC_ENABLE)) {
   fcr |= OH_SCC_ENABLE;
   if (htw) {





    if (trans)
     fcr &= ~HRW_SCC_TRANS_EN_N;
    MACIO_OUT32(OHARE_FCR, fcr);
    fcr |= (rmask = HRW_RESET_SCC);
    MACIO_OUT32(OHARE_FCR, fcr);
   } else {
    fcr |= (rmask = OH_SCC_RESET);
    MACIO_OUT32(OHARE_FCR, fcr);
   }
   UNLOCK(flags);
   (void)MACIO_IN32(OHARE_FCR);
   mdelay(15);
   LOCK(flags);
   fcr &= ~rmask;
   MACIO_OUT32(OHARE_FCR, fcr);
  }
  if (chan_mask & MACIO_FLAG_SCCA_ON)
   fcr |= OH_SCCA_IO;
  if (chan_mask & MACIO_FLAG_SCCB_ON)
   fcr |= OH_SCCB_IO;
  MACIO_OUT32(OHARE_FCR, fcr);
  macio->flags |= chan_mask;
  UNLOCK(flags);
  if (param & PMAC_SCC_FLAG_XMON)
   macio->flags |= MACIO_FLAG_SCC_LOCKED;
 } else {
  if (macio->flags & MACIO_FLAG_SCC_LOCKED)
   return -EPERM;
  LOCK(flags);
  fcr = MACIO_IN32(OHARE_FCR);
  if (chan_mask & MACIO_FLAG_SCCA_ON)
   fcr &= ~OH_SCCA_IO;
  if (chan_mask & MACIO_FLAG_SCCB_ON)
   fcr &= ~OH_SCCB_IO;
  MACIO_OUT32(OHARE_FCR, fcr);
  if ((fcr & (OH_SCCA_IO | OH_SCCB_IO)) == 0) {
   fcr &= ~OH_SCC_ENABLE;
   if (htw && trans)
    fcr |= HRW_SCC_TRANS_EN_N;
   MACIO_OUT32(OHARE_FCR, fcr);
  }
  macio->flags &= ~(chan_mask);
  UNLOCK(flags);
  mdelay(10);




 }
 return 0;
}
