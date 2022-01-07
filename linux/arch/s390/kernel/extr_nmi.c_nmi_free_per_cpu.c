
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowcore {int mcesad; } ;


 int MCESA_ORIGIN_MASK ;
 int kmem_cache_free (int ,void*) ;
 int mcesa_cache ;
 int nmi_needs_mcesa () ;

void nmi_free_per_cpu(struct lowcore *lc)
{
 if (!nmi_needs_mcesa())
  return;
 kmem_cache_free(mcesa_cache, (void *)(lc->mcesad & MCESA_ORIGIN_MASK));
}
