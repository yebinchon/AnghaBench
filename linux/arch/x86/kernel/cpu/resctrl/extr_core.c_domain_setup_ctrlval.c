
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rdt_resource {int (* msr_update ) (struct rdt_domain*,struct msr_param*,struct rdt_resource*) ;int num_closid; } ;
struct rdt_domain {int * mbps_val; int * ctrl_val; } ;
struct msr_param {int high; scalar_t__ low; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc_array (int ,int,int ) ;
 int setup_default_ctrlval (struct rdt_resource*,int *,int *) ;
 int stub1 (struct rdt_domain*,struct msr_param*,struct rdt_resource*) ;

__attribute__((used)) static int domain_setup_ctrlval(struct rdt_resource *r, struct rdt_domain *d)
{
 struct msr_param m;
 u32 *dc, *dm;

 dc = kmalloc_array(r->num_closid, sizeof(*d->ctrl_val), GFP_KERNEL);
 if (!dc)
  return -ENOMEM;

 dm = kmalloc_array(r->num_closid, sizeof(*d->mbps_val), GFP_KERNEL);
 if (!dm) {
  kfree(dc);
  return -ENOMEM;
 }

 d->ctrl_val = dc;
 d->mbps_val = dm;
 setup_default_ctrlval(r, dc, dm);

 m.low = 0;
 m.high = r->num_closid;
 r->msr_update(d, &m, r);
 return 0;
}
