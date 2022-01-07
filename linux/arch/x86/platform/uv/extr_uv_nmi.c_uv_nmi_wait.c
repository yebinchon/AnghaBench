
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int UV_NMI_STATE_IN ;
 int atomic_read (int *) ;
 int cpumask_pr_args (int ) ;
 int cpumask_weight (int ) ;
 int num_online_cpus () ;
 int pr_alert (char*,int ,int ) ;
 int this_cpu_write (int ,int ) ;
 TYPE_1__ uv_cpu_nmi ;
 int uv_nmi_cpu_mask ;
 int uv_nmi_cpus_in_nmi ;
 int uv_nmi_nr_cpus_ping () ;
 int uv_nmi_wait_cpus (int) ;

__attribute__((used)) static void uv_nmi_wait(int master)
{

 this_cpu_write(uv_cpu_nmi.state, UV_NMI_STATE_IN);


 if (!master)
  return;

 do {

  if (!uv_nmi_wait_cpus(1))
   break;


  pr_alert("UV: Sending NMI IPI to %d CPUs: %*pbl\n",
    cpumask_weight(uv_nmi_cpu_mask),
    cpumask_pr_args(uv_nmi_cpu_mask));

  uv_nmi_nr_cpus_ping();


  if (!uv_nmi_wait_cpus(0))
   break;

  pr_alert("UV: %d CPUs not in NMI loop: %*pbl\n",
    cpumask_weight(uv_nmi_cpu_mask),
    cpumask_pr_args(uv_nmi_cpu_mask));
 } while (0);

 pr_alert("UV: %d of %d CPUs in NMI\n",
  atomic_read(&uv_nmi_cpus_in_nmi), num_online_cpus());
}
