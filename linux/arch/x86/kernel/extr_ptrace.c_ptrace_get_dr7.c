
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled; } ;
struct perf_event {TYPE_1__ attr; } ;
struct arch_hw_breakpoint {int type; int len; } ;


 int HBP_NUM ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 int encode_dr7 (int,int ,int ) ;

__attribute__((used)) static unsigned long ptrace_get_dr7(struct perf_event *bp[])
{
 int i;
 int dr7 = 0;
 struct arch_hw_breakpoint *info;

 for (i = 0; i < HBP_NUM; i++) {
  if (bp[i] && !bp[i]->attr.disabled) {
   info = counter_arch_bp(bp[i]);
   dr7 |= encode_dr7(i, info->len, info->type);
  }
 }

 return dr7;
}
