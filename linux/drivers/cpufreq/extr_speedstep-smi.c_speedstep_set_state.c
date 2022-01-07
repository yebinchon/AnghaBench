
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frequency; } ;


 unsigned int SET_SPEEDSTEP_STATE ;
 unsigned int SMI_TRIES ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mdelay (unsigned int) ;
 int pr_debug (char*,int,unsigned int,...) ;
 int pr_err (char*,unsigned int,unsigned int,unsigned int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smi_cmd ;
 unsigned int smi_port ;
 int smi_sig ;
 TYPE_1__* speedstep_freqs ;

__attribute__((used)) static void speedstep_set_state(unsigned int state)
{
 unsigned int result = 0, command, new_state, dummy;
 unsigned long flags;
 unsigned int function = SET_SPEEDSTEP_STATE;
 unsigned int retry = 0;

 if (state > 0x1)
  return;


 preempt_disable();
 local_irq_save(flags);

 command = (smi_sig & 0xffffff00) | (smi_cmd & 0xff);

 pr_debug("trying to set frequency to state %u "
  "with command %x at port %x\n",
  state, command, smi_port);

 do {
  if (retry) {
   pr_debug("retry %u, previous result %u, waiting...\n",
     retry, result);
   local_irq_enable();
   mdelay(retry * 50);
   local_irq_disable();
  }
  retry++;
  __asm__ __volatile__(
   "push %%ebp\n"
   "out %%al, (%%dx)\n"
   "pop %%ebp"
   : "=b" (new_state), "=D" (result),
     "=c" (dummy), "=a" (dummy),
     "=d" (dummy), "=S" (dummy)
   : "a" (command), "b" (function), "c" (state),
     "d" (smi_port), "S" (0), "D" (0)
   );
 } while ((new_state != state) && (retry <= SMI_TRIES));


 local_irq_restore(flags);
 preempt_enable();

 if (new_state == state)
  pr_debug("change to %u MHz succeeded after %u tries "
   "with result %u\n",
   (speedstep_freqs[new_state].frequency / 1000),
   retry, result);
 else
  pr_err("change to state %u failed with new_state %u and result %u\n",
         state, new_state, result);

 return;
}
