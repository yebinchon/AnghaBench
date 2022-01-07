
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COUNTON ;
 int NR_LOOPS ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int count_count_start ;
 int count_count_stop ;
 scalar_t__ initcount ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 int pr_cont (char*) ;
 int pr_info (char*,int) ;
 scalar_t__ read_c0_count () ;
 int smp_wmb () ;
 int write_c0_compare (scalar_t__) ;
 int write_c0_count (scalar_t__) ;

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
   initcount = read_c0_count();




  if (i == NR_LOOPS-1)
   write_c0_count(initcount);




  while (atomic_read(&count_count_stop) != 1)
   mb();
  atomic_set(&count_count_start, 0);
  smp_wmb();
  atomic_inc(&count_count_stop);
 }

 write_c0_compare(read_c0_count() + COUNTON);

 local_irq_restore(flags);






 pr_cont("done.\n");
}
