
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dest_logical; int (* init_apic_ldr ) () ;int (* apic_id_registered ) () ;scalar_t__ disable_esr; } ;


 unsigned int APIC_DM_EXTINT ;
 unsigned int APIC_DM_NMI ;
 int APIC_ESR ;
 scalar_t__ APIC_EXTNMI_ALL ;
 scalar_t__ APIC_EXTNMI_NONE ;
 int APIC_LDR ;
 int APIC_LVT0 ;
 int APIC_LVT1 ;
 unsigned int APIC_LVT_LEVEL_TRIGGER ;
 unsigned int APIC_LVT_MASKED ;
 int APIC_SPIV ;
 unsigned int APIC_SPIV_APIC_ENABLED ;
 unsigned int APIC_SPIV_FOCUS_DISABLED ;
 int APIC_TASKPRI ;
 unsigned int APIC_TPRI_MASK ;
 unsigned int APIC_VECTOR_MASK ;
 int APIC_VERBOSE ;
 int BAD_APICID ;
 int BUG_ON (int) ;
 int GET_APIC_LOGICAL_ID (unsigned int) ;
 unsigned int SPURIOUS_APIC_VECTOR ;
 int WARN_ON (int) ;
 TYPE_1__* apic ;
 scalar_t__ apic_extnmi ;
 int apic_pending_intr_clear () ;
 int apic_printk (int ,char*,int) ;
 unsigned int apic_read (int ) ;
 int apic_write (int ,unsigned int) ;
 int cmci_recheck () ;
 scalar_t__ disable_apic ;
 int disable_ioapic_support () ;
 int early_per_cpu (int ,int) ;
 scalar_t__ lapic_is_integrated () ;
 int perf_events_lapic_init () ;
 scalar_t__ pic_mode ;
 scalar_t__ skip_ioapic_setup ;
 int smp_processor_id () ;
 int stub1 () ;
 int stub2 () ;
 int x86_cpu_to_logical_apicid ;

__attribute__((used)) static void setup_local_APIC(void)
{
 int cpu = smp_processor_id();
 unsigned int value;

 if (disable_apic) {
  disable_ioapic_support();
  return;
 }





 value = apic_read(APIC_SPIV);
 value &= ~APIC_SPIV_APIC_ENABLED;
 apic_write(APIC_SPIV, value);
 BUG_ON(!apic->apic_id_registered());






 apic->init_apic_ldr();
 value = apic_read(APIC_TASKPRI);
 value &= ~APIC_TPRI_MASK;
 value |= 0x10;
 apic_write(APIC_TASKPRI, value);


 apic_pending_intr_clear();




 value = apic_read(APIC_SPIV);
 value &= ~APIC_VECTOR_MASK;



 value |= APIC_SPIV_APIC_ENABLED;
 value |= SPURIOUS_APIC_VECTOR;
 apic_write(APIC_SPIV, value);

 perf_events_lapic_init();
 value = apic_read(APIC_LVT0) & APIC_LVT_MASKED;
 if (!cpu && (pic_mode || !value || skip_ioapic_setup)) {
  value = APIC_DM_EXTINT;
  apic_printk(APIC_VERBOSE, "enabled ExtINT on CPU#%d\n", cpu);
 } else {
  value = APIC_DM_EXTINT | APIC_LVT_MASKED;
  apic_printk(APIC_VERBOSE, "masked ExtINT on CPU#%d\n", cpu);
 }
 apic_write(APIC_LVT0, value);





 if ((!cpu && apic_extnmi != APIC_EXTNMI_NONE) ||
     apic_extnmi == APIC_EXTNMI_ALL)
  value = APIC_DM_NMI;
 else
  value = APIC_DM_NMI | APIC_LVT_MASKED;


 if (!lapic_is_integrated())
  value |= APIC_LVT_LEVEL_TRIGGER;
 apic_write(APIC_LVT1, value);






}
