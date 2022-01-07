
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int kp; } ;
struct kprobe_ctlblk {int kprobe_status; TYPE_1__ prev_kprobe; } ;
struct kprobe {int dummy; } ;


 int __this_cpu_read (int ) ;
 int __this_cpu_write (int ,struct kprobe*) ;
 int current_kprobe ;

__attribute__((used)) static void push_kprobe(struct kprobe_ctlblk *kcb, struct kprobe *p)
{
 kcb->prev_kprobe.kp = __this_cpu_read(current_kprobe);
 kcb->prev_kprobe.status = kcb->kprobe_status;
 __this_cpu_write(current_kprobe, p);
}
