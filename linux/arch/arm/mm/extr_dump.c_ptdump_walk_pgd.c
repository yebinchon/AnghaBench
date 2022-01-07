
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct ptdump_info {int base_addr; int mm; int markers; } ;
struct pg_state {int check_wx; int marker; struct seq_file* seq; } ;


 int note_page (struct pg_state*,int ,int ,int ,int *) ;
 int walk_pgd (struct pg_state*,int ,int ) ;

void ptdump_walk_pgd(struct seq_file *m, struct ptdump_info *info)
{
 struct pg_state st = {
  .seq = m,
  .marker = info->markers,
  .check_wx = 0,
 };

 walk_pgd(&st, info->mm, info->base_addr);
 note_page(&st, 0, 0, 0, ((void*)0));
}
