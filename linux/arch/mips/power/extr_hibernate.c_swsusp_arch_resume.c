
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int local_flush_tlb_all () ;
 int restore_image () ;

int swsusp_arch_resume(void)
{

 local_flush_tlb_all();
 return restore_image();
}
