
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int pgd_t ;


 int ptdump_walk_pgd_level_core (struct seq_file*,int *,int,int) ;

void ptdump_walk_pgd_level(struct seq_file *m, pgd_t *pgd)
{
 ptdump_walk_pgd_level_core(m, pgd, 0, 1);
}
