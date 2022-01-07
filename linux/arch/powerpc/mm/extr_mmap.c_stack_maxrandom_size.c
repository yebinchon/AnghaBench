
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int PF_RANDOMIZE ;
 TYPE_1__* current ;
 scalar_t__ is_32bit_task () ;

__attribute__((used)) static inline unsigned long stack_maxrandom_size(void)
{
 if (!(current->flags & PF_RANDOMIZE))
  return 0;


 if (is_32bit_task())
  return (1<<23);
 else
  return (1<<30);
}
