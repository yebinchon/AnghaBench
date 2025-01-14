
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t rid; size_t domid; size_t evtid; } ;
union mon_data_bits {TYPE_1__ u; int priv; } ;
typedef size_t u32 ;
struct seq_file {struct kernfs_open_file* private; } ;
struct rmid_read {int val; } ;
struct rdtgroup {int dummy; } ;
struct rdt_resource {int mon_scale; } ;
struct rdt_domain {int dummy; } ;
struct kernfs_open_file {TYPE_2__* kn; } ;
struct TYPE_5__ {int priv; } ;


 int ENOENT ;
 scalar_t__ IS_ERR_OR_NULL (struct rdt_domain*) ;
 int RMID_VAL_ERROR ;
 int RMID_VAL_UNAVAIL ;
 int mon_event_read (struct rmid_read*,struct rdt_domain*,struct rdtgroup*,size_t,int) ;
 struct rdt_domain* rdt_find_domain (struct rdt_resource*,size_t,int *) ;
 struct rdt_resource* rdt_resources_all ;
 struct rdtgroup* rdtgroup_kn_lock_live (TYPE_2__*) ;
 int rdtgroup_kn_unlock (TYPE_2__*) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;

int rdtgroup_mondata_show(struct seq_file *m, void *arg)
{
 struct kernfs_open_file *of = m->private;
 u32 resid, evtid, domid;
 struct rdtgroup *rdtgrp;
 struct rdt_resource *r;
 union mon_data_bits md;
 struct rdt_domain *d;
 struct rmid_read rr;
 int ret = 0;

 rdtgrp = rdtgroup_kn_lock_live(of->kn);
 if (!rdtgrp) {
  ret = -ENOENT;
  goto out;
 }

 md.priv = of->kn->priv;
 resid = md.u.rid;
 domid = md.u.domid;
 evtid = md.u.evtid;

 r = &rdt_resources_all[resid];
 d = rdt_find_domain(r, domid, ((void*)0));
 if (IS_ERR_OR_NULL(d)) {
  ret = -ENOENT;
  goto out;
 }

 mon_event_read(&rr, d, rdtgrp, evtid, 0);

 if (rr.val & RMID_VAL_ERROR)
  seq_puts(m, "Error\n");
 else if (rr.val & RMID_VAL_UNAVAIL)
  seq_puts(m, "Unavailable\n");
 else
  seq_printf(m, "%llu\n", rr.val * r->mon_scale);

out:
 rdtgroup_kn_unlock(of->kn);
 return ret;
}
