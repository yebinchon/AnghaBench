
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {size_t cpu; } ;
struct sparc_stackf {int dummy; } ;


 unsigned long THREAD_SIZE ;
 scalar_t__* hardirq_stack ;
 scalar_t__* softirq_stack ;

__attribute__((used)) static inline bool kstack_valid(struct thread_info *tp, unsigned long sp)
{
 unsigned long base = (unsigned long) tp;


 if (sp & (16UL - 1))
  return 0;

 if (sp >= (base + sizeof(struct thread_info)) &&
     sp <= (base + THREAD_SIZE - sizeof(struct sparc_stackf)))
  return 1;

 if (hardirq_stack[tp->cpu]) {
  base = (unsigned long) hardirq_stack[tp->cpu];
  if (sp >= base &&
      sp <= (base + THREAD_SIZE - sizeof(struct sparc_stackf)))
   return 1;
  base = (unsigned long) softirq_stack[tp->cpu];
  if (sp >= base &&
      sp <= (base + THREAD_SIZE - sizeof(struct sparc_stackf)))
   return 1;
 }
 return 0;
}
