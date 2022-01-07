
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {unsigned char state; } ;


 unsigned char SCIR_CPU_ACTIVITY ;
 scalar_t__ SCIR_CPU_HB_INTERVAL ;
 unsigned char SCIR_CPU_HEARTBEAT ;
 scalar_t__ idle_cpu (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (struct timer_list*,scalar_t__) ;
 int raw_smp_processor_id () ;
 TYPE_1__* uv_scir_info ;
 int uv_set_scir_bits (unsigned char) ;

__attribute__((used)) static void uv_heartbeat(struct timer_list *timer)
{
 unsigned char bits = uv_scir_info->state;


 bits ^= SCIR_CPU_HEARTBEAT;


 if (idle_cpu(raw_smp_processor_id()))
  bits &= ~SCIR_CPU_ACTIVITY;
 else
  bits |= SCIR_CPU_ACTIVITY;


 uv_set_scir_bits(bits);


 mod_timer(timer, jiffies + SCIR_CPU_HB_INTERVAL);
}
