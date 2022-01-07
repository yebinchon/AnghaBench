
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int HPET_T0_CFG ;
 int HPET_TN_ENABLE ;
 int hpet_lock ;
 int hpet_read (int ) ;
 int hpet_write (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int hpet_set_state_shutdown(struct clock_event_device *evt)
{
 int cfg;

 spin_lock(&hpet_lock);

 cfg = hpet_read(HPET_T0_CFG);
 cfg &= ~HPET_TN_ENABLE;
 hpet_write(HPET_T0_CFG, cfg);

 spin_unlock(&hpet_lock);
 return 0;
}
