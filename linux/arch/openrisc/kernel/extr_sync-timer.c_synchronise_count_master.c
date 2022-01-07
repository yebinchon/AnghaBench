
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNTON ;
 int NR_LOOPS ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int count_count_start ;
 int count_count_stop ;
 int get_cycles () ;
 int initcount ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 int openrisc_timer_set (int ) ;
 int openrisc_timer_set_next (int ) ;
 int pr_cont (char*) ;
 int pr_info (char*,int) ;
 int smp_wmb () ;

void synchronise_count_master(int cpu)
{
 int i;
 unsigned long flags;

 pr_info("Synchronize counters for CPU %u: ", cpu);

 local_irq_save(flags);
 for (i = 0; i < NR_LOOPS; i++) {

  while (atomic_read(&count_count_start) != 1)
   mb();
  atomic_set(&count_count_stop, 0);
  smp_wmb();


  atomic_inc(&count_count_start);


  if (i == 1)
   initcount = get_cycles();




  if (i == NR_LOOPS-1)
   openrisc_timer_set(initcount);




  while (atomic_read(&count_count_stop) != 1)
   mb();
  atomic_set(&count_count_start, 0);
  smp_wmb();
  atomic_inc(&count_count_stop);
 }

 openrisc_timer_set_next(COUNTON);

 local_irq_restore(flags);






 pr_cont("done.\n");
}
