
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {scalar_t__ expires; } ;
struct TYPE_2__ {int enabled; struct timer_list timer; } ;


 int SCIR_CPU_ACTIVITY ;
 scalar_t__ SCIR_CPU_HB_INTERVAL ;
 int SCIR_CPU_HEARTBEAT ;
 int TIMER_PINNED ;
 int add_timer_on (struct timer_list*,unsigned int) ;
 scalar_t__ jiffies ;
 int timer_setup (struct timer_list*,int ,int ) ;
 TYPE_1__* uv_cpu_scir_info (unsigned int) ;
 int uv_heartbeat ;
 int uv_set_cpu_scir_bits (unsigned int,int) ;

__attribute__((used)) static int uv_heartbeat_enable(unsigned int cpu)
{
 while (!uv_cpu_scir_info(cpu)->enabled) {
  struct timer_list *timer = &uv_cpu_scir_info(cpu)->timer;

  uv_set_cpu_scir_bits(cpu, SCIR_CPU_HEARTBEAT|SCIR_CPU_ACTIVITY);
  timer_setup(timer, uv_heartbeat, TIMER_PINNED);
  timer->expires = jiffies + SCIR_CPU_HB_INTERVAL;
  add_timer_on(timer, cpu);
  uv_cpu_scir_info(cpu)->enabled = 1;


  cpu = 0;
 }
 return 0;
}
