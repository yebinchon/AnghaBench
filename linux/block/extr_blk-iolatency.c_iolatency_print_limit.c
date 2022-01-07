
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int private; } ;


 int blkcg_policy_iolatency ;
 int blkcg_print_blkgs (struct seq_file*,int ,int ,int *,int ,int) ;
 int css_to_blkcg (int ) ;
 int iolatency_prfill_limit ;
 TYPE_1__* seq_cft (struct seq_file*) ;
 int seq_css (struct seq_file*) ;

__attribute__((used)) static int iolatency_print_limit(struct seq_file *sf, void *v)
{
 blkcg_print_blkgs(sf, css_to_blkcg(seq_css(sf)),
     iolatency_prfill_limit,
     &blkcg_policy_iolatency, seq_cft(sf)->private, 0);
 return 0;
}
