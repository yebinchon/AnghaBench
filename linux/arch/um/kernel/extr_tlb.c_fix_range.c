
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int mm_users; } ;


 scalar_t__ atomic_read (int *) ;
 int fix_range_common (struct mm_struct*,unsigned long,unsigned long,int) ;

__attribute__((used)) static void fix_range(struct mm_struct *mm, unsigned long start_addr,
        unsigned long end_addr, int force)
{




 if (atomic_read(&mm->mm_users) == 0)
  return;

 fix_range_common(mm, start_addr, end_addr, force);
}
