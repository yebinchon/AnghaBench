
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct getcpu_cache {int dummy; } ;



long
__vdso_getcpu(unsigned *cpu, unsigned *node, struct getcpu_cache *unused)
{




 if (cpu)
  *cpu = 0;
 if (node)
  *node = 0;

 return 0;
}
