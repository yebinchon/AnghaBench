
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lowcore {unsigned long mcesad; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kmem_cache_alloc (int ,int ) ;
 int kmemleak_not_leak (void*) ;
 int mcesa_cache ;
 unsigned long mcesa_origin_lc ;
 int nmi_needs_mcesa () ;

int nmi_alloc_per_cpu(struct lowcore *lc)
{
 unsigned long origin;

 if (!nmi_needs_mcesa())
  return 0;
 origin = (unsigned long) kmem_cache_alloc(mcesa_cache, GFP_KERNEL);
 if (!origin)
  return -ENOMEM;

 kmemleak_not_leak((void *) origin);
 lc->mcesad = origin | mcesa_origin_lc;
 return 0;
}
