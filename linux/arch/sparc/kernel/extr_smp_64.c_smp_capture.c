
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_add_return (int,int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int num_online_cpus () ;
 int penguins_are_doing_time ;
 int printk (char*,...) ;
 int rmb () ;
 int smp_capture_depth ;
 int smp_capture_registry ;
 int smp_cross_call (int *,int ,int ,int ) ;
 int smp_processor_id () ;
 int xcall_capture ;

void smp_capture(void)
{
 int result = atomic_add_return(1, &smp_capture_depth);

 if (result == 1) {
  int ncpus = num_online_cpus();





  penguins_are_doing_time = 1;
  atomic_inc(&smp_capture_registry);
  smp_cross_call(&xcall_capture, 0, 0, 0);
  while (atomic_read(&smp_capture_registry) != ncpus)
   rmb();



 }
}
