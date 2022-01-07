
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rdtgroup {scalar_t__ mode; int closid; } ;
struct rdt_resource {int (* cbm_validate ) (int ,int *,struct rdt_resource*) ;} ;
struct rdt_parse_data {int buf; struct rdtgroup* rdtgrp; } ;
struct rdt_domain {int have_new_ctrl; int new_ctrl; int id; } ;


 int EINVAL ;
 scalar_t__ RDT_MODE_EXCLUSIVE ;
 scalar_t__ RDT_MODE_PSEUDO_LOCKSETUP ;
 scalar_t__ RDT_MODE_SHAREABLE ;
 int rdt_last_cmd_printf (char*,int ) ;
 int rdt_last_cmd_puts (char*) ;
 scalar_t__ rdtgroup_cbm_overlaps (struct rdt_resource*,struct rdt_domain*,int ,int ,int) ;
 scalar_t__ rdtgroup_cbm_overlaps_pseudo_locked (struct rdt_domain*,int ) ;
 scalar_t__ rdtgroup_pseudo_locked_in_hierarchy (struct rdt_domain*) ;
 int stub1 (int ,int *,struct rdt_resource*) ;

int parse_cbm(struct rdt_parse_data *data, struct rdt_resource *r,
       struct rdt_domain *d)
{
 struct rdtgroup *rdtgrp = data->rdtgrp;
 u32 cbm_val;

 if (d->have_new_ctrl) {
  rdt_last_cmd_printf("Duplicate domain %d\n", d->id);
  return -EINVAL;
 }





 if (rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP &&
     rdtgroup_pseudo_locked_in_hierarchy(d)) {
  rdt_last_cmd_puts("Pseudo-locked region in hierarchy\n");
  return -EINVAL;
 }

 if (!r->cbm_validate(data->buf, &cbm_val, r))
  return -EINVAL;

 if ((rdtgrp->mode == RDT_MODE_EXCLUSIVE ||
      rdtgrp->mode == RDT_MODE_SHAREABLE) &&
     rdtgroup_cbm_overlaps_pseudo_locked(d, cbm_val)) {
  rdt_last_cmd_puts("CBM overlaps with pseudo-locked region\n");
  return -EINVAL;
 }





 if (rdtgroup_cbm_overlaps(r, d, cbm_val, rdtgrp->closid, 1)) {
  rdt_last_cmd_puts("Overlaps with exclusive group\n");
  return -EINVAL;
 }

 if (rdtgroup_cbm_overlaps(r, d, cbm_val, rdtgrp->closid, 0)) {
  if (rdtgrp->mode == RDT_MODE_EXCLUSIVE ||
      rdtgrp->mode == RDT_MODE_PSEUDO_LOCKSETUP) {
   rdt_last_cmd_puts("Overlaps with other group\n");
   return -EINVAL;
  }
 }

 d->new_ctrl = cbm_val;
 d->have_new_ctrl = 1;

 return 0;
}
