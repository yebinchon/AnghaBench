
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int barrier () ;
 scalar_t__ mfctl (int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void __cr16_delay(unsigned long __loops)
{






 u32 bclock, now, loops = __loops;
 int cpu;

 preempt_disable();
 cpu = smp_processor_id();
 bclock = mfctl(16);
 for (;;) {
  now = mfctl(16);
  if ((now - bclock) >= loops)
   break;


  preempt_enable();
  asm volatile("	nop\n");
  barrier();
  preempt_disable();
  if (unlikely(cpu != smp_processor_id())) {
   loops -= (now - bclock);
   cpu = smp_processor_id();
   bclock = mfctl(16);
  }
 }
 preempt_enable();
}
