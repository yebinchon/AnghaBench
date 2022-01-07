
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int schedule_work (int *) ;
 int sysrq_tlbdump ;
 int sysrq_tlbdump_single (int *) ;

__attribute__((used)) static void sysrq_handle_tlbdump(int key)
{
 sysrq_tlbdump_single(((void*)0));



}
