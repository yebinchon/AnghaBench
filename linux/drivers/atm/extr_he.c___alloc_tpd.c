
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct he_tpd {TYPE_1__* iovec; scalar_t__ reserved; int status; } ;
struct he_dev {int tpd_pool; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ addr; } ;


 int GFP_ATOMIC ;
 int TPD_ADDR (int ) ;
 struct he_tpd* dma_pool_alloc (int ,int ,int *) ;

__attribute__((used)) static struct he_tpd *
__alloc_tpd(struct he_dev *he_dev)
{
 struct he_tpd *tpd;
 dma_addr_t mapping;

 tpd = dma_pool_alloc(he_dev->tpd_pool, GFP_ATOMIC, &mapping);
 if (tpd == ((void*)0))
  return ((void*)0);

 tpd->status = TPD_ADDR(mapping);
 tpd->reserved = 0;
 tpd->iovec[0].addr = 0; tpd->iovec[0].len = 0;
 tpd->iovec[1].addr = 0; tpd->iovec[1].len = 0;
 tpd->iovec[2].addr = 0; tpd->iovec[2].len = 0;

 return tpd;
}
