
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_event {int cpu; } ;
struct cn_msg {scalar_t__ data; scalar_t__ seq; } ;


 int CN_IDX_PROC ;
 int GFP_NOWAIT ;
 scalar_t__ __this_cpu_inc_return (int ) ;
 int cn_netlink_send (struct cn_msg*,int ,int ,int ) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int proc_event_counts ;
 int smp_processor_id () ;

__attribute__((used)) static inline void send_msg(struct cn_msg *msg)
{
 preempt_disable();

 msg->seq = __this_cpu_inc_return(proc_event_counts) - 1;
 ((struct proc_event *)msg->data)->cpu = smp_processor_id();







 cn_netlink_send(msg, 0, CN_IDX_PROC, GFP_NOWAIT);

 preempt_enable();
}
