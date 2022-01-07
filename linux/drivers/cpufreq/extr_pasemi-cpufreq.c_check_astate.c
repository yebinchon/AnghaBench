
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_cur_astate (int ) ;
 int hard_smp_processor_id () ;

int check_astate(void)
{
 return get_cur_astate(hard_smp_processor_id());
}
