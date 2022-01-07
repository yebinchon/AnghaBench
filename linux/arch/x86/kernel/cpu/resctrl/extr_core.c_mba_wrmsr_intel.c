
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_resource {scalar_t__ msr_base; } ;
struct rdt_domain {int * ctrl_val; } ;
struct msr_param {unsigned int low; unsigned int high; } ;


 int delay_bw_map (int ,struct rdt_resource*) ;
 int wrmsrl (scalar_t__,int ) ;

__attribute__((used)) static void
mba_wrmsr_intel(struct rdt_domain *d, struct msr_param *m,
  struct rdt_resource *r)
{
 unsigned int i;


 for (i = m->low; i < m->high; i++)
  wrmsrl(r->msr_base + i, delay_bw_map(d->ctrl_val[i], r));
}
