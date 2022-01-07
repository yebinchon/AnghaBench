
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int nr; } ;
struct cpu_hw_events {int br_sel; TYPE_2__* lbr_entries; TYPE_1__ lbr_stack; } ;
struct TYPE_4__ {scalar_t__ from; int type; scalar_t__ in_tx; int abort; scalar_t__ to; } ;


 int X86_BR_ALL ;
 int X86_BR_ANYTX ;
 int X86_BR_IN_TX ;
 int X86_BR_NONE ;
 int X86_BR_NO_TX ;
 int X86_BR_TYPE_SAVE ;
 int branch_type (scalar_t__,scalar_t__,int ) ;
 int common_branch_type (int) ;

__attribute__((used)) static void
intel_pmu_lbr_filter(struct cpu_hw_events *cpuc)
{
 u64 from, to;
 int br_sel = cpuc->br_sel;
 int i, j, type;
 bool compress = 0;


 if (((br_sel & X86_BR_ALL) == X86_BR_ALL) &&
     ((br_sel & X86_BR_TYPE_SAVE) != X86_BR_TYPE_SAVE))
  return;

 for (i = 0; i < cpuc->lbr_stack.nr; i++) {

  from = cpuc->lbr_entries[i].from;
  to = cpuc->lbr_entries[i].to;

  type = branch_type(from, to, cpuc->lbr_entries[i].abort);
  if (type != X86_BR_NONE && (br_sel & X86_BR_ANYTX)) {
   if (cpuc->lbr_entries[i].in_tx)
    type |= X86_BR_IN_TX;
   else
    type |= X86_BR_NO_TX;
  }


  if (type == X86_BR_NONE || (br_sel & type) != type) {
   cpuc->lbr_entries[i].from = 0;
   compress = 1;
  }

  if ((br_sel & X86_BR_TYPE_SAVE) == X86_BR_TYPE_SAVE)
   cpuc->lbr_entries[i].type = common_branch_type(type);
 }

 if (!compress)
  return;


 for (i = 0; i < cpuc->lbr_stack.nr; ) {
  if (!cpuc->lbr_entries[i].from) {
   j = i;
   while (++j < cpuc->lbr_stack.nr)
    cpuc->lbr_entries[j-1] = cpuc->lbr_entries[j];
   cpuc->lbr_stack.nr--;
   if (!cpuc->lbr_entries[i].from)
    continue;
  }
  i++;
 }
}
