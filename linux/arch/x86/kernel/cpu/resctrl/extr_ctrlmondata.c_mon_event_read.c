
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmid_read {int evtid; int first; scalar_t__ val; struct rdt_domain* d; struct rdtgroup* rgrp; } ;
struct rdtgroup {int dummy; } ;
struct rdt_domain {int cpu_mask; } ;


 int mon_event_count ;
 int smp_call_function_any (int *,int ,struct rmid_read*,int) ;

void mon_event_read(struct rmid_read *rr, struct rdt_domain *d,
      struct rdtgroup *rdtgrp, int evtid, int first)
{



 rr->rgrp = rdtgrp;
 rr->evtid = evtid;
 rr->d = d;
 rr->val = 0;
 rr->first = first;

 smp_call_function_any(&d->cpu_mask, mon_event_count, rr, 1);
}
