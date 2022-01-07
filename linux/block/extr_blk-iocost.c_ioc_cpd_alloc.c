
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkcg_policy_data {int dummy; } ;
struct ioc_cgrp {struct blkcg_policy_data cpd; int dfl_weight; } ;
typedef int gfp_t ;


 int CGROUP_WEIGHT_DFL ;
 struct ioc_cgrp* kzalloc (int,int ) ;

__attribute__((used)) static struct blkcg_policy_data *ioc_cpd_alloc(gfp_t gfp)
{
 struct ioc_cgrp *iocc;

 iocc = kzalloc(sizeof(struct ioc_cgrp), gfp);
 if (!iocc)
  return ((void*)0);

 iocc->dfl_weight = CGROUP_WEIGHT_DFL;
 return &iocc->cpd;
}
