
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_AP_ONLINE_DYN ;
 int CPUHP_XEN_PREPARE ;
 int cpuhp_remove_state_nocalls (int ) ;
 int cpuhp_setup_state_nocalls (int ,char*,int (*) (unsigned int),int (*) (unsigned int)) ;
 int xen_cpu_up_online (unsigned int) ;

int xen_cpuhp_setup(int (*cpu_up_prepare_cb)(unsigned int),
      int (*cpu_dead_cb)(unsigned int))
{
 int rc;

 rc = cpuhp_setup_state_nocalls(CPUHP_XEN_PREPARE,
           "x86/xen/guest:prepare",
           cpu_up_prepare_cb, cpu_dead_cb);
 if (rc >= 0) {
  rc = cpuhp_setup_state_nocalls(CPUHP_AP_ONLINE_DYN,
            "x86/xen/guest:online",
            xen_cpu_up_online, ((void*)0));
  if (rc < 0)
   cpuhp_remove_state_nocalls(CPUHP_XEN_PREPARE);
 }

 return rc >= 0 ? 0 : rc;
}
