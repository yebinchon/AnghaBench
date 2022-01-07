
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int kp; } ;
struct kprobe_ctlblk {TYPE_1__ prev_kprobe; int kprobe_status; } ;


 int __this_cpu_write (int ,int ) ;
 int current_kprobe ;

__attribute__((used)) static void pop_kprobe(struct kprobe_ctlblk *kcb)
{
 __this_cpu_write(current_kprobe, kcb->prev_kprobe.kp);
 kcb->kprobe_status = kcb->prev_kprobe.status;
}
