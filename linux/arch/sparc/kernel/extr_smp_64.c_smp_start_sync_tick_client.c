
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int cpumask_of (int) ;
 int xcall_deliver (int ,int ,int ,int ) ;
 int xcall_sync_tick ;

__attribute__((used)) static void smp_start_sync_tick_client(int cpu)
{
 xcall_deliver((u64) &xcall_sync_tick, 0, 0,
        cpumask_of(cpu));
}
