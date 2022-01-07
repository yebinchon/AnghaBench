
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_park_loop () ;
 int local_daif_mask () ;
 int sdei_mask_local_cpu () ;
 int set_cpu_online (int ,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void local_cpu_stop(void)
{
 set_cpu_online(smp_processor_id(), 0);

 local_daif_mask();
 sdei_mask_local_cpu();
 cpu_park_loop();
}
