
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DM_FIXED ;
 int APIC_LVTCMCI ;
 int THRESHOLD_APIC_VECTOR ;
 int apic_write (int ,int) ;
 int cmci_discover (int) ;
 int cmci_recheck () ;
 int cmci_supported (int*) ;
 int intel_threshold_interrupt ;
 int mce_threshold_vector ;

__attribute__((used)) static void intel_init_cmci(void)
{
 int banks;

 if (!cmci_supported(&banks))
  return;

 mce_threshold_vector = intel_threshold_interrupt;
 cmci_discover(banks);






 apic_write(APIC_LVTCMCI, THRESHOLD_APIC_VECTOR|APIC_DM_FIXED);
 cmci_recheck();
}
