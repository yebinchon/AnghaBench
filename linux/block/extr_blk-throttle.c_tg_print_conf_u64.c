
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int private; } ;


 int blkcg_policy_throtl ;
 int blkcg_print_blkgs (struct seq_file*,int ,int ,int *,int ,int) ;
 int css_to_blkcg (int ) ;
 TYPE_1__* seq_cft (struct seq_file*) ;
 int seq_css (struct seq_file*) ;
 int tg_prfill_conf_u64 ;

__attribute__((used)) static int tg_print_conf_u64(struct seq_file *sf, void *v)
{
 blkcg_print_blkgs(sf, css_to_blkcg(seq_css(sf)), tg_prfill_conf_u64,
     &blkcg_policy_throtl, seq_cft(sf)->private, 0);
 return 0;
}
