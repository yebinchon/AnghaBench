
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int get_freq_data ;
 int pr_debug (char*,unsigned int) ;
 int smp_call_function_single (unsigned int,int ,unsigned int*,int) ;

__attribute__((used)) static unsigned int speedstep_get(unsigned int cpu)
{
 unsigned int speed;


 BUG_ON(smp_call_function_single(cpu, get_freq_data, &speed, 1));

 pr_debug("detected %u kHz as current frequency\n", speed);
 return speed;
}
