
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int features; } ;


 int APIC_LVTT ;
 unsigned int APIC_LVT_MASKED ;
 int APIC_TMICT ;
 int CLOCK_EVT_FEAT_DUMMY ;
 unsigned int LOCAL_TIMER_VECTOR ;
 unsigned int apic_read (int ) ;
 int apic_write (int ,unsigned int) ;

__attribute__((used)) static int lapic_timer_shutdown(struct clock_event_device *evt)
{
 unsigned int v;


 if (evt->features & CLOCK_EVT_FEAT_DUMMY)
  return 0;

 v = apic_read(APIC_LVTT);
 v |= (APIC_LVT_MASKED | LOCAL_TIMER_VECTOR);
 apic_write(APIC_LVTT, v);
 apic_write(APIC_TMICT, 0);
 return 0;
}
