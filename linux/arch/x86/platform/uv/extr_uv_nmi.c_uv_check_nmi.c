
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uv_hub_nmi_s {int nmi_lock; int in_nmi; } ;
struct TYPE_2__ {int queries; } ;


 int atomic_read (int *) ;
 int cpu_relax () ;
 int local64_inc (int *) ;
 scalar_t__ raw_spin_trylock (int *) ;
 int raw_spin_unlock (int *) ;
 int smp_processor_id () ;
 int this_cpu_inc (int ) ;
 int udelay (int ) ;
 TYPE_1__ uv_cpu_nmi ;
 int uv_in_nmi ;
 int uv_nmi_count ;
 int uv_nmi_misses ;
 int uv_nmi_slave_delay ;
 int uv_set_in_nmi (int,struct uv_hub_nmi_s*) ;
 int uv_test_nmi (struct uv_hub_nmi_s*) ;

__attribute__((used)) static int uv_check_nmi(struct uv_hub_nmi_s *hub_nmi)
{
 int cpu = smp_processor_id();
 int nmi = 0;
 int nmi_detected = 0;

 local64_inc(&uv_nmi_count);
 this_cpu_inc(uv_cpu_nmi.queries);

 do {
  nmi = atomic_read(&hub_nmi->in_nmi);
  if (nmi)
   break;

  if (raw_spin_trylock(&hub_nmi->nmi_lock)) {
   nmi_detected = uv_test_nmi(hub_nmi);


   if (nmi_detected > 0) {
    uv_set_in_nmi(cpu, hub_nmi);
    nmi = 1;
    break;
   }


   else if (nmi_detected < 0)
    goto slave_wait;


   raw_spin_unlock(&hub_nmi->nmi_lock);

  } else {


slave_wait: cpu_relax();
   udelay(uv_nmi_slave_delay);


   nmi = atomic_read(&hub_nmi->in_nmi);
   if (nmi)
    break;
  }





  if (!nmi) {
   nmi = atomic_read(&uv_in_nmi);
   if (nmi)
    uv_set_in_nmi(cpu, hub_nmi);
  }


  if (nmi_detected < 0)
   raw_spin_unlock(&hub_nmi->nmi_lock);

 } while (0);

 if (!nmi)
  local64_inc(&uv_nmi_misses);

 return nmi;
}
