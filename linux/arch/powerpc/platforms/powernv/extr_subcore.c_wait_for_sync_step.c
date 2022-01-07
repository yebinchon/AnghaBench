
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int step; } ;


 int barrier () ;
 int mb () ;
 TYPE_1__ per_cpu (int ,int) ;
 int smp_processor_id () ;
 int split_state ;
 int threads_per_core ;

__attribute__((used)) static void wait_for_sync_step(int step)
{
 int i, cpu = smp_processor_id();

 for (i = cpu + 1; i < cpu + threads_per_core; i++)
  while(per_cpu(split_state, i).step < step)
   barrier();


 mb();
}
