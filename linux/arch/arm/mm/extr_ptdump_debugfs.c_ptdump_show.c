
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct ptdump_info* private; } ;
struct ptdump_info {int dummy; } ;


 int ptdump_walk_pgd (struct seq_file*,struct ptdump_info*) ;

__attribute__((used)) static int ptdump_show(struct seq_file *m, void *v)
{
 struct ptdump_info *info = m->private;

 ptdump_walk_pgd(m, info);
 return 0;
}
