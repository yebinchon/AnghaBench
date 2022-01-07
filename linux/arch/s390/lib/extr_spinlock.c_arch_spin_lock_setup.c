
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spin_wait {int node_id; } ;


 int _Q_TAIL_CPU_OFFSET ;
 int _Q_TAIL_IDX_OFFSET ;
 int memset (struct spin_wait*,int ,int) ;
 struct spin_wait* per_cpu_ptr (int *,int) ;
 int * spin_wait ;

void arch_spin_lock_setup(int cpu)
{
 struct spin_wait *node;
 int ix;

 node = per_cpu_ptr(&spin_wait[0], cpu);
 for (ix = 0; ix < 4; ix++, node++) {
  memset(node, 0, sizeof(*node));
  node->node_id = ((cpu + 1) << _Q_TAIL_CPU_OFFSET) +
   (ix << _Q_TAIL_IDX_OFFSET);
 }
}
