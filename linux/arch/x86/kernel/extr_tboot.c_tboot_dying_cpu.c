
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int ap_wfs_count ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int num_online_cpus () ;
 scalar_t__ tboot_wait_for_aps (int ) ;

__attribute__((used)) static int tboot_dying_cpu(unsigned int cpu)
{
 atomic_inc(&ap_wfs_count);
 if (num_online_cpus() == 1) {
  if (tboot_wait_for_aps(atomic_read(&ap_wfs_count)))
   return -EBUSY;
 }
 return 0;
}
