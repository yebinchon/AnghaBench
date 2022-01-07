
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_online (int) ;
 scalar_t__ cpu_thread_in_subcore (int) ;
 scalar_t__ kvmppc_grab_hwthread (int) ;
 int kvmppc_release_hwthread (int) ;
 int smp_processor_id () ;
 int threads_per_subcore ;

__attribute__((used)) static int on_primary_thread(void)
{
 int cpu = smp_processor_id();
 int thr;


 if (cpu_thread_in_subcore(cpu))
  return 0;

 thr = 0;
 while (++thr < threads_per_subcore)
  if (cpu_online(cpu + thr))
   return 0;


 for (thr = 1; thr < threads_per_subcore; ++thr) {
  if (kvmppc_grab_hwthread(cpu + thr)) {

   do {
    kvmppc_release_hwthread(cpu + thr);
   } while (--thr > 0);
   return 0;
  }
 }
 return 1;
}
