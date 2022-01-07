
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
typedef enum hw_breakpoint_ops { ____Placeholder_hw_breakpoint_ops } hw_breakpoint_ops ;


 int EINVAL ;
 int ENOSPC ;



 int pr_warn_once (char*,int) ;

__attribute__((used)) static int hw_breakpoint_slot_setup(struct perf_event **slots, int max_slots,
        struct perf_event *bp,
        enum hw_breakpoint_ops ops)
{
 int i;
 struct perf_event **slot;

 for (i = 0; i < max_slots; ++i) {
  slot = &slots[i];
  switch (ops) {
  case 130:
   if (!*slot) {
    *slot = bp;
    return i;
   }
   break;
  case 128:
   if (*slot == bp) {
    *slot = ((void*)0);
    return i;
   }
   break;
  case 129:
   if (*slot == bp)
    return i;
   break;
  default:
   pr_warn_once("Unhandled hw breakpoint ops %d\n", ops);
   return -EINVAL;
  }
 }
 return -ENOSPC;
}
