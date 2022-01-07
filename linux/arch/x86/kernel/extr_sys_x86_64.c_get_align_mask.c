
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; unsigned long mask; } ;


 int PF_RANDOMIZE ;
 TYPE_2__* current ;
 int mmap_is_ia32 () ;
 TYPE_1__ va_align ;

__attribute__((used)) static unsigned long get_align_mask(void)
{

 if (va_align.flags < 0 || !(va_align.flags & (2 - mmap_is_ia32())))
  return 0;

 if (!(current->flags & PF_RANDOMIZE))
  return 0;

 return va_align.mask;
}
