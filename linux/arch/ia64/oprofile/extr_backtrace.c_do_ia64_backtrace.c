
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct unw_frame_info {int dummy; } ;
struct switch_stack {int dummy; } ;
struct TYPE_3__ {int frame; int depth; scalar_t__ regs; } ;
typedef TYPE_1__ ia64_backtrace_t ;


 int current ;
 scalar_t__ next_frame (TYPE_1__*) ;
 int oprofile_add_trace (scalar_t__) ;
 int unw_get_ip (int *,scalar_t__*) ;
 int unw_get_sp (int *,scalar_t__*) ;
 int unw_init_frame_info (int *,int ,struct switch_stack*) ;
 scalar_t__ unw_is_intr_frame (int *) ;

__attribute__((used)) static void do_ia64_backtrace(struct unw_frame_info *info, void *vdata)
{
 ia64_backtrace_t *bt = vdata;
 struct switch_stack *sw;
 int count = 0;
 u_long pc, sp;

 sw = (struct switch_stack *)(info+1);

 sw = (struct switch_stack *)(((unsigned long)sw + 15) & ~15);

 unw_init_frame_info(&bt->frame, current, sw);


 do {
  unw_get_sp(&bt->frame, &sp);
  if (sp >= (u_long)bt->regs)
   break;
  if (!next_frame(bt))
   return;
 } while (count++ < 200);


 while (bt->depth-- && next_frame(bt)) {
  unw_get_ip(&bt->frame, &pc);
  oprofile_add_trace(pc);
  if (unw_is_intr_frame(&bt->frame)) {
   break;
  }
 }
}
