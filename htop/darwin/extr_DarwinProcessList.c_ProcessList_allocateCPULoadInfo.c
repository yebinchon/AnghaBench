
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int processor_info_array_t ;
typedef int processor_cpu_load_info_t ;
typedef int mach_msg_type_number_t ;


 int CRT_fatalError (char*) ;
 int PROCESSOR_CPU_LOAD_INFO ;
 scalar_t__ host_processor_info (int ,int ,unsigned int*,int *,int*) ;
 int mach_host_self () ;

unsigned ProcessList_allocateCPULoadInfo(processor_cpu_load_info_t *p) {
   mach_msg_type_number_t info_size = sizeof(processor_cpu_load_info_t);
   unsigned cpu_count;


   if(0 != host_processor_info(mach_host_self(), PROCESSOR_CPU_LOAD_INFO, &cpu_count, (processor_info_array_t *)p, &info_size)) {
       CRT_fatalError("Unable to retrieve CPU info\n");
   }

   return cpu_count;
}
