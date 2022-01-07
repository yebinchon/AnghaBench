
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MASTER ;
 unsigned long NUM_ITERS ;
 unsigned long NUM_ROUNDS ;
 size_t SLAVE ;
 int cpu_relax () ;
 scalar_t__* go ;
 scalar_t__ ia64_get_itc () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void
sync_master (void *arg)
{
 unsigned long flags, i;

 go[MASTER] = 0;

 local_irq_save(flags);
 {
  for (i = 0; i < NUM_ROUNDS*NUM_ITERS; ++i) {
   while (!go[MASTER])
    cpu_relax();
   go[MASTER] = 0;
   go[SLAVE] = ia64_get_itc();
  }
 }
 local_irq_restore(flags);
}
