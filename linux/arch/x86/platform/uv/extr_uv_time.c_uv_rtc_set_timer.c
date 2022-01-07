
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct uv_rtc_timer_head {int next_cpu; int lock; TYPE_1__* cpu; } ;
struct TYPE_2__ {int expires; } ;


 int ETIME ;
 int ULLONG_MAX ;
 struct uv_rtc_timer_head** blade_info ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uv_cpu_blade_processor_id (int) ;
 int uv_cpu_to_blade_id (int) ;
 int uv_cpu_to_pnode (int) ;
 int uv_rtc_find_next_timer (struct uv_rtc_timer_head*,int) ;
 scalar_t__ uv_setup_intr (int,int ) ;

__attribute__((used)) static int uv_rtc_set_timer(int cpu, u64 expires)
{
 int pnode = uv_cpu_to_pnode(cpu);
 int bid = uv_cpu_to_blade_id(cpu);
 struct uv_rtc_timer_head *head = blade_info[bid];
 int bcpu = uv_cpu_blade_processor_id(cpu);
 u64 *t = &head->cpu[bcpu].expires;
 unsigned long flags;
 int next_cpu;

 spin_lock_irqsave(&head->lock, flags);

 next_cpu = head->next_cpu;
 *t = expires;


 if (next_cpu < 0 || bcpu == next_cpu ||
   expires < head->cpu[next_cpu].expires) {
  head->next_cpu = bcpu;
  if (uv_setup_intr(cpu, expires)) {
   *t = ULLONG_MAX;
   uv_rtc_find_next_timer(head, pnode);
   spin_unlock_irqrestore(&head->lock, flags);
   return -ETIME;
  }
 }

 spin_unlock_irqrestore(&head->lock, flags);
 return 0;
}
