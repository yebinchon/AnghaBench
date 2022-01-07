
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; scalar_t__ pgd; } ;


 TYPE_2__* current ;
 int down_read (int *) ;
 int ptdump_walk_pgd_level_debugfs (struct seq_file*,scalar_t__,int) ;
 int up_read (int *) ;

__attribute__((used)) static int ptdump_curknl_show(struct seq_file *m, void *v)
{
 if (current->mm->pgd) {
  down_read(&current->mm->mmap_sem);
  ptdump_walk_pgd_level_debugfs(m, current->mm->pgd, 0);
  up_read(&current->mm->mmap_sem);
 }
 return 0;
}
