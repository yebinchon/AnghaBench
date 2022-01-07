
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_start; } ;


 int EINVAL ;
 int ENOENT ;
 int nr_cpu_ids ;
 TYPE_1__** paca_ptrs ;
 int smp_startup_cpu (int) ;

__attribute__((used)) static int smp_cell_kick_cpu(int nr)
{
 if (nr < 0 || nr >= nr_cpu_ids)
  return -EINVAL;

 if (!smp_startup_cpu(nr))
  return -ENOENT;






 paca_ptrs[nr]->cpu_start = 1;

 return 0;
}
