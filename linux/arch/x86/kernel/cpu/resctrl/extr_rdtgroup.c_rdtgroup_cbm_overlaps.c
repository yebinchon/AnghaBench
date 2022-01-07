
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_resource {int dummy; } ;
struct rdt_domain {int dummy; } ;


 int __rdtgroup_cbm_overlaps (struct rdt_resource*,struct rdt_domain*,unsigned long,int,int) ;
 scalar_t__ rdt_cdp_peer_get (struct rdt_resource*,struct rdt_domain*,struct rdt_resource**,struct rdt_domain**) ;

bool rdtgroup_cbm_overlaps(struct rdt_resource *r, struct rdt_domain *d,
      unsigned long cbm, int closid, bool exclusive)
{
 struct rdt_resource *r_cdp;
 struct rdt_domain *d_cdp;

 if (__rdtgroup_cbm_overlaps(r, d, cbm, closid, exclusive))
  return 1;

 if (rdt_cdp_peer_get(r, d, &r_cdp, &d_cdp) < 0)
  return 0;

 return __rdtgroup_cbm_overlaps(r_cdp, d_cdp, cbm, closid, exclusive);
}
