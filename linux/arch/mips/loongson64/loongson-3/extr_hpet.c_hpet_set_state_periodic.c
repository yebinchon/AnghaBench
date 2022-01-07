
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int HPET_COMPARE_VAL ;
 int HPET_T0_CFG ;
 int HPET_T0_CMP ;
 int HPET_TN_32BIT ;
 int HPET_TN_ENABLE ;
 int HPET_TN_LEVEL ;
 int HPET_TN_PERIODIC ;
 int HPET_TN_SETVAL ;
 int hpet_lock ;
 int hpet_read (int ) ;
 int hpet_start_counter () ;
 int hpet_stop_counter () ;
 int hpet_write (int ,int) ;
 int pr_info (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int) ;

__attribute__((used)) static int hpet_set_state_periodic(struct clock_event_device *evt)
{
 int cfg;

 spin_lock(&hpet_lock);

 pr_info("set clock event to periodic mode!\n");

 hpet_stop_counter();


 cfg = hpet_read(HPET_T0_CFG);
 cfg &= ~HPET_TN_LEVEL;
 cfg |= HPET_TN_ENABLE | HPET_TN_PERIODIC | HPET_TN_SETVAL |
  HPET_TN_32BIT;
 hpet_write(HPET_T0_CFG, cfg);


 hpet_write(HPET_T0_CMP, HPET_COMPARE_VAL);
 udelay(1);
 hpet_write(HPET_T0_CMP, HPET_COMPARE_VAL);


 hpet_start_counter();

 spin_unlock(&hpet_lock);
 return 0;
}
