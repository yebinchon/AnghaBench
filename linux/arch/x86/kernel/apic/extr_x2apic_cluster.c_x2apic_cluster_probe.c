
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_X2APIC_PREPARE ;
 scalar_t__ cpuhp_setup_state (int ,char*,int ,int ) ;
 int init_x2apic_ldr () ;
 int pr_err (char*) ;
 int x2apic_dead_cpu ;
 int x2apic_mode ;
 int x2apic_prepare_cpu ;

__attribute__((used)) static int x2apic_cluster_probe(void)
{
 if (!x2apic_mode)
  return 0;

 if (cpuhp_setup_state(CPUHP_X2APIC_PREPARE, "x86/x2apic:prepare",
         x2apic_prepare_cpu, x2apic_dead_cpu) < 0) {
  pr_err("Failed to register X2APIC_PREPARE\n");
  return 0;
 }
 init_x2apic_ldr();
 return 1;
}
