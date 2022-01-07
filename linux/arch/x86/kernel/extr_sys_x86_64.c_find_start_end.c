
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 unsigned long DEFAULT_MAP_WINDOW ;
 unsigned long MAP_32BIT ;
 int PF_RANDOMIZE ;
 TYPE_1__* current ;
 unsigned long get_mmap_base (int) ;
 scalar_t__ in_32bit_syscall () ;
 unsigned long randomize_page (unsigned long,int) ;
 unsigned long task_size_32bit () ;
 unsigned long task_size_64bit (int) ;

__attribute__((used)) static void find_start_end(unsigned long addr, unsigned long flags,
  unsigned long *begin, unsigned long *end)
{
 if (!in_32bit_syscall() && (flags & MAP_32BIT)) {







  *begin = 0x40000000;
  *end = 0x80000000;
  if (current->flags & PF_RANDOMIZE) {
   *begin = randomize_page(*begin, 0x02000000);
  }
  return;
 }

 *begin = get_mmap_base(1);
 if (in_32bit_syscall())
  *end = task_size_32bit();
 else
  *end = task_size_64bit(addr > DEFAULT_MAP_WINDOW);
}
