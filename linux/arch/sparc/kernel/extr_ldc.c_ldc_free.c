
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_channel {struct ldc_channel* mssbuf; int list; } ;


 int hlist_del (int *) ;
 int kfree (struct ldc_channel*) ;
 int ldc_iommu_release (struct ldc_channel*) ;
 int ldc_unbind (struct ldc_channel*) ;

void ldc_free(struct ldc_channel *lp)
{
 ldc_unbind(lp);
 hlist_del(&lp->list);
 kfree(lp->mssbuf);
 ldc_iommu_release(lp);

 kfree(lp);
}
