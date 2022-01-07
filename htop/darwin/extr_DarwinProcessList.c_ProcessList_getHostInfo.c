
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_number_t ;
typedef int host_info_t ;
typedef int host_basic_info_data_t ;


 int CRT_fatalError (char*) ;
 int HOST_BASIC_INFO ;
 int HOST_BASIC_INFO_COUNT ;
 scalar_t__ host_info (int ,int ,int ,int *) ;
 int mach_host_self () ;

void ProcessList_getHostInfo(host_basic_info_data_t *p) {
   mach_msg_type_number_t info_size = HOST_BASIC_INFO_COUNT;

   if(0 != host_info(mach_host_self(), HOST_BASIC_INFO, (host_info_t)p, &info_size)) {
       CRT_fatalError("Unable to retrieve host info\n");
   }
}
