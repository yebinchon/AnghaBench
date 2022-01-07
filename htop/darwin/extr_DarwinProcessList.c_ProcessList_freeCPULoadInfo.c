
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * processor_cpu_load_info_t ;


 int CRT_fatalError (char*) ;
 scalar_t__ munmap (int *,int ) ;
 int vm_page_size ;

void ProcessList_freeCPULoadInfo(processor_cpu_load_info_t *p) {
   if(((void*)0) != p && ((void*)0) != *p) {
       if(0 != munmap(*p, vm_page_size)) {
           CRT_fatalError("Unable to free old CPU load information\n");
       }
       *p = ((void*)0);
   }
}
