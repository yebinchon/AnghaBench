
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cbe_id; } ;


 TYPE_1__* cbe_thread_map ;

u32 cbe_cpu_to_node(int cpu)
{
 return cbe_thread_map[cpu].cbe_id;
}
