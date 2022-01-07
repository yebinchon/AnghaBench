
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int ptdump_walk_pgd_level_debugfs (struct seq_file*,int *,int) ;

__attribute__((used)) static int ptdump_show(struct seq_file *m, void *v)
{
 ptdump_walk_pgd_level_debugfs(m, ((void*)0), 0);
 return 0;
}
