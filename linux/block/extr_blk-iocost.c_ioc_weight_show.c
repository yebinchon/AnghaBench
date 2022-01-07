
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct ioc_cgrp {int dfl_weight; } ;
struct blkcg {int dummy; } ;
struct TYPE_2__ {int private; } ;


 int blkcg_policy_iocost ;
 int blkcg_print_blkgs (struct seq_file*,struct blkcg*,int ,int *,int ,int) ;
 struct ioc_cgrp* blkcg_to_iocc (struct blkcg*) ;
 struct blkcg* css_to_blkcg (int ) ;
 int ioc_weight_prfill ;
 TYPE_1__* seq_cft (struct seq_file*) ;
 int seq_css (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int ioc_weight_show(struct seq_file *sf, void *v)
{
 struct blkcg *blkcg = css_to_blkcg(seq_css(sf));
 struct ioc_cgrp *iocc = blkcg_to_iocc(blkcg);

 seq_printf(sf, "default %u\n", iocc->dfl_weight);
 blkcg_print_blkgs(sf, blkcg, ioc_weight_prfill,
     &blkcg_policy_iocost, seq_cft(sf)->private, 0);
 return 0;
}
