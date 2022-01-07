
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int COMPARE ;
 int MFGPT0_CMP2 ;
 int MFGPT0_CNT ;
 int enable_mfgpt0_counter () ;
 int mfgpt_lock ;
 int outw (int ,int ) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static int mfgpt_timer_set_periodic(struct clock_event_device *evt)
{
 raw_spin_lock(&mfgpt_lock);

 outw(COMPARE, MFGPT0_CMP2);
 outw(0, MFGPT0_CNT);
 enable_mfgpt0_counter();

 raw_spin_unlock(&mfgpt_lock);
 return 0;
}
