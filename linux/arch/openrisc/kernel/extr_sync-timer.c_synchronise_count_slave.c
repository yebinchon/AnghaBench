
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNTON ;
 int NR_LOOPS ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int count_count_start ;
 int count_count_stop ;
 int initcount ;
 int mb () ;
 int openrisc_timer_set (int ) ;
 int openrisc_timer_set_next (int ) ;

void synchronise_count_slave(int cpu)
{
 int i;






 for (i = 0; i < NR_LOOPS; i++) {
  atomic_inc(&count_count_start);
  while (atomic_read(&count_count_start) != 2)
   mb();




  if (i == NR_LOOPS-1)
   openrisc_timer_set(initcount);

  atomic_inc(&count_count_stop);
  while (atomic_read(&count_count_stop) != 2)
   mb();
 }

 openrisc_timer_set_next(COUNTON);
}
