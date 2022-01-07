
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ktime_t ;
typedef enum speedstep_processor { ____Placeholder_speedstep_processor } speedstep_processor ;


 unsigned int EINVAL ;
 unsigned int EIO ;
 unsigned int ENODEV ;
 unsigned int SPEEDSTEP_HIGH ;
 unsigned int SPEEDSTEP_LOW ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 unsigned int ktime_to_us (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pr_debug (char*,...) ;
 int pr_warn (char*,unsigned int,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 unsigned int speedstep_get_frequency (int) ;

unsigned int speedstep_get_freqs(enum speedstep_processor processor,
      unsigned int *low_speed,
      unsigned int *high_speed,
      unsigned int *transition_latency,
      void (*set_state) (unsigned int state))
{
 unsigned int prev_speed;
 unsigned int ret = 0;
 unsigned long flags;
 ktime_t tv1, tv2;

 if ((!processor) || (!low_speed) || (!high_speed) || (!set_state))
  return -EINVAL;

 pr_debug("trying to determine both speeds\n");


 prev_speed = speedstep_get_frequency(processor);
 if (!prev_speed)
  return -EIO;

 pr_debug("previous speed is %u\n", prev_speed);

 preempt_disable();
 local_irq_save(flags);


 set_state(SPEEDSTEP_LOW);
 *low_speed = speedstep_get_frequency(processor);
 if (!*low_speed) {
  ret = -EIO;
  goto out;
 }

 pr_debug("low speed is %u\n", *low_speed);


 if (transition_latency)
  tv1 = ktime_get();


 set_state(SPEEDSTEP_HIGH);


 if (transition_latency)
  tv2 = ktime_get();

 *high_speed = speedstep_get_frequency(processor);
 if (!*high_speed) {
  ret = -EIO;
  goto out;
 }

 pr_debug("high speed is %u\n", *high_speed);

 if (*low_speed == *high_speed) {
  ret = -ENODEV;
  goto out;
 }


 if (*high_speed != prev_speed)
  set_state(SPEEDSTEP_LOW);

 if (transition_latency) {
  *transition_latency = ktime_to_us(ktime_sub(tv2, tv1));
  pr_debug("transition latency is %u uSec\n", *transition_latency);


  *transition_latency *= 1200;




  if (*transition_latency > 10000000 ||
      *transition_latency < 50000) {
   pr_warn("frequency transition measured seems out of range (%u nSec), falling back to a safe one of %u nSec\n",
    *transition_latency, 500000);
   *transition_latency = 500000;
  }
 }

out:
 local_irq_restore(flags);
 preempt_enable();

 return ret;
}
