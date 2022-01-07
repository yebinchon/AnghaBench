
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtlx_info {int ap_int_pending; } ;
struct TYPE_2__ {int rt_queue; int lx_queue; } ;


 int RTLX_CHANNELS ;
 int aprp_cpu_index () ;
 TYPE_1__* channel_wqs ;
 scalar_t__ smp_processor_id () ;
 struct rtlx_info** vpe_get_shared (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void rtlx_interrupt(void)
{
 int i;
 struct rtlx_info *info;
 struct rtlx_info **p = vpe_get_shared(aprp_cpu_index());

 if (p == ((void*)0) || *p == ((void*)0))
  return;

 info = *p;

 if (info->ap_int_pending == 1 && smp_processor_id() == 0) {
  for (i = 0; i < RTLX_CHANNELS; i++) {
   wake_up(&channel_wqs[i].lx_queue);
   wake_up(&channel_wqs[i].rt_queue);
  }
  info->ap_int_pending = 0;
 }
}
