
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rlimit {scalar_t__ rlim_cur; } ;
struct TYPE_2__ {int personality; } ;


 int ADDR_COMPAT_LAYOUT ;
 scalar_t__ RLIM_INFINITY ;
 TYPE_1__* current ;
 int sysctl_legacy_va_layout ;

__attribute__((used)) static inline int mmap_is_legacy(struct rlimit *rlim_stack)
{
 if (current->personality & ADDR_COMPAT_LAYOUT)
  return 1;

 if (rlim_stack->rlim_cur == RLIM_INFINITY)
  return 1;

 return sysctl_legacy_va_layout;
}
