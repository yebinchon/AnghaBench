
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spin_wait {int node_id; struct spin_wait* prev; } ;


 int _Q_LOCK_CPU_MASK ;
 int _Q_TAIL_CPU_OFFSET ;

__attribute__((used)) static inline int arch_spin_yield_target(int lock, struct spin_wait *node)
{
 if (lock & _Q_LOCK_CPU_MASK)
  return lock & _Q_LOCK_CPU_MASK;
 if (node == ((void*)0) || node->prev == ((void*)0))
  return 0;
 while (node->prev)
  node = node->prev;
 return node->node_id >> _Q_TAIL_CPU_OFFSET;
}
