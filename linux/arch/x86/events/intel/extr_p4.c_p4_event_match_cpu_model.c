
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x86_model; } ;


 unsigned int P4_EVENT_INSTR_COMPLETED ;
 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static bool p4_event_match_cpu_model(unsigned int event_idx)
{

 if (event_idx == P4_EVENT_INSTR_COMPLETED) {
  if (boot_cpu_data.x86_model != 3 &&
   boot_cpu_data.x86_model != 4 &&
   boot_cpu_data.x86_model != 6)
   return 0;
 }






 return 1;
}
