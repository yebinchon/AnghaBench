
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_LVTT ;
 unsigned int APIC_LVT_MASKED ;
 unsigned int LOCAL_TIMER_VECTOR ;
 int apic_pm_activate () ;
 unsigned int apic_read (int ) ;
 int apic_write (int ,unsigned int) ;
 int lapic_setup_esr () ;

__attribute__((used)) static void end_local_APIC_setup(void)
{
 lapic_setup_esr();
 apic_pm_activate();
}
