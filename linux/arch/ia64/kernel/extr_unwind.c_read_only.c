
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r0; } ;


 TYPE_1__ unw ;

__attribute__((used)) static inline int
read_only (void *addr)
{
 return (unsigned long) ((char *) addr - (char *) &unw.r0) < sizeof(unw.r0);
}
