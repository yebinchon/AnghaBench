
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COUNTON ;
 int NR_LOOPS ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int count_count_start ;
 int count_count_stop ;
 int initcount ;
 int mb () ;
 scalar_t__ read_c0_count () ;
 int write_c0_compare (scalar_t__) ;
 int write_c0_count (int ) ;

void synchronise_count_slave(int cpu)
{
 int i;






 for (i = 0; i < NR_LOOPS; i++) {
  atomic_inc(&count_count_start);
  while (atomic_read(&count_count_start) != 2)
   mb();




  if (i == NR_LOOPS-1)
   write_c0_count(initcount);

  atomic_inc(&count_count_stop);
  while (atomic_read(&count_count_stop) != 2)
   mb();
 }

 write_c0_compare(read_c0_count() + COUNTON);
}
