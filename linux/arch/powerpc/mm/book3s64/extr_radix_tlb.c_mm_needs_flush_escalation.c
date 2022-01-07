
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int copros; } ;
struct mm_struct {TYPE_1__ context; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static bool mm_needs_flush_escalation(struct mm_struct *mm)
{





 if (atomic_read(&mm->context.copros) > 0)
  return 1;
 return 0;
}
