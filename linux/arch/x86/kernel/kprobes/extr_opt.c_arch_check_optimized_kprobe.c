
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ addr; } ;
struct TYPE_3__ {int size; } ;
struct optimized_kprobe {TYPE_2__ kp; TYPE_1__ optinsn; } ;
struct kprobe {int dummy; } ;


 int EEXIST ;
 struct kprobe* get_kprobe (scalar_t__) ;
 int kprobe_disabled (struct kprobe*) ;

int arch_check_optimized_kprobe(struct optimized_kprobe *op)
{
 int i;
 struct kprobe *p;

 for (i = 1; i < op->optinsn.size; i++) {
  p = get_kprobe(op->kp.addr + i);
  if (p && !kprobe_disabled(p))
   return -EEXIST;
 }

 return 0;
}
