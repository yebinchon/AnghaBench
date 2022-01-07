
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sibling_subcore_state {int dummy; } ;
struct TYPE_2__ {struct sibling_subcore_state* sibling_subcore_state; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cpu_nr_cores () ;
 int cpu_to_node (int) ;
 struct sibling_subcore_state* kzalloc_node (int,int ,int) ;
 TYPE_1__** paca_ptrs ;
 int threads_per_core ;

__attribute__((used)) static int kvm_init_subcore_bitmap(void)
{
 int i, j;
 int nr_cores = cpu_nr_cores();
 struct sibling_subcore_state *sibling_subcore_state;

 for (i = 0; i < nr_cores; i++) {
  int first_cpu = i * threads_per_core;
  int node = cpu_to_node(first_cpu);


  if (paca_ptrs[first_cpu]->sibling_subcore_state)
   continue;

  sibling_subcore_state =
   kzalloc_node(sizeof(struct sibling_subcore_state),
       GFP_KERNEL, node);
  if (!sibling_subcore_state)
   return -ENOMEM;


  for (j = 0; j < threads_per_core; j++) {
   int cpu = first_cpu + j;

   paca_ptrs[cpu]->sibling_subcore_state =
      sibling_subcore_state;
  }
 }
 return 0;
}
