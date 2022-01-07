
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLAVE_CLEAR ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cpu_relax () ;
 int uv_nmi_cpus_in_nmi ;
 int uv_nmi_slave_continue ;

__attribute__((used)) static void uv_nmi_sync_exit(int master)
{
 atomic_dec(&uv_nmi_cpus_in_nmi);
 if (master) {
  while (atomic_read(&uv_nmi_cpus_in_nmi) > 0)
   cpu_relax();
  atomic_set(&uv_nmi_slave_continue, SLAVE_CLEAR);
 } else {
  while (atomic_read(&uv_nmi_slave_continue))
   cpu_relax();
 }
}
