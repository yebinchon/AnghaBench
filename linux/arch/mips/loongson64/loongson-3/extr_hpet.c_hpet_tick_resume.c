
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int hpet_enable_legacy_int () ;
 int hpet_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int hpet_tick_resume(struct clock_event_device *evt)
{
 spin_lock(&hpet_lock);
 hpet_enable_legacy_int();
 spin_unlock(&hpet_lock);

 return 0;
}
