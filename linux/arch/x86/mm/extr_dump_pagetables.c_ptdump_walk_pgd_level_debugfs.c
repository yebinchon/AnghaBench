
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int pgd_t ;


 int X86_FEATURE_PTI ;
 scalar_t__ boot_cpu_has (int ) ;
 int * kernel_to_user_pgdp (int *) ;
 int ptdump_walk_pgd_level_core (struct seq_file*,int *,int,int) ;

void ptdump_walk_pgd_level_debugfs(struct seq_file *m, pgd_t *pgd, bool user)
{




 ptdump_walk_pgd_level_core(m, pgd, 0, 0);
}
