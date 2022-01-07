
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum speedstep_processor { ____Placeholder_speedstep_processor } speedstep_processor ;
 unsigned int pentium3_get_frequency (int) ;
 unsigned int pentium4_get_frequency () ;
 unsigned int pentiumM_get_frequency () ;
 unsigned int pentium_core_get_frequency () ;

unsigned int speedstep_get_frequency(enum speedstep_processor processor)
{
 switch (processor) {
 case 132:
  return pentium_core_get_frequency();
 case 128:
  return pentiumM_get_frequency();
 case 134:
 case 133:
  return pentium4_get_frequency();
 case 129:
 case 131:
 case 130:
  return pentium3_get_frequency(processor);
 default:
  return 0;
 };
 return 0;
}
