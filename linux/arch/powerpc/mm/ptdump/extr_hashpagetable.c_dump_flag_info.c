
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pg_state {int seq; } ;
struct flag_info {int mask; int val; int shift; char* set; char* clear; scalar_t__ is_val; } ;


 int seq_printf (int ,char*,char const*,...) ;

__attribute__((used)) static void dump_flag_info(struct pg_state *st, const struct flag_info
  *flag, u64 pte, int num)
{
 unsigned int i;

 for (i = 0; i < num; i++, flag++) {
  const char *s = ((void*)0);
  u64 val;


  if (flag->mask == 0)
   continue;

  if (flag->is_val) {
   val = pte & flag->val;
   if (flag->shift)
    val = val >> flag->shift;
   seq_printf(st->seq, "  %s:%llx", flag->set, val);
  } else {
   if ((pte & flag->mask) == flag->val)
    s = flag->set;
   else
    s = flag->clear;
   if (s)
    seq_printf(st->seq, "  %s", s);
  }
 }
}
