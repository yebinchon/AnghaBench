
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_sleep_data {int dummy; } ;


 unsigned long RAM_BASE ;
 unsigned long SUSP_SH_MMU ;
 int atomic_notifier_call_chain (int *,unsigned long,int *) ;
 int flush_cache_all () ;
 int sh_mobile_post_sleep_notifier_list ;
 int sh_mobile_pre_sleep_notifier_list ;

void sh_mobile_call_standby(unsigned long mode)
{
 void *onchip_mem = (void *)RAM_BASE;
 struct sh_sleep_data *sdp = onchip_mem;
 void (*standby_onchip_mem)(unsigned long, unsigned long);


 standby_onchip_mem = (void *)(sdp + 1);

 atomic_notifier_call_chain(&sh_mobile_pre_sleep_notifier_list,
       mode, ((void*)0));


 if (mode & SUSP_SH_MMU)
  flush_cache_all();


 standby_onchip_mem(mode, RAM_BASE);

 atomic_notifier_call_chain(&sh_mobile_post_sleep_notifier_list,
       mode, ((void*)0));
}
