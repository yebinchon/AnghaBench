
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int personality; } ;


 int ADDR_COMPAT_LAYOUT ;
 TYPE_1__* current ;
 int sysctl_legacy_va_layout ;

__attribute__((used)) static int mmap_is_legacy(void)
{
 if (current->personality & ADDR_COMPAT_LAYOUT)
  return 1;







 return sysctl_legacy_va_layout;
}
