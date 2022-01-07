
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prot_bits {int mask; int val; char* set; char* clear; } ;
struct pg_state {int current_prot; int seq; } ;


 int pt_dump_seq_printf (int ,char*,char const*) ;

__attribute__((used)) static void dump_prot(struct pg_state *st, const struct prot_bits *bits,
   size_t num)
{
 unsigned i;

 for (i = 0; i < num; i++, bits++) {
  const char *s;

  if ((st->current_prot & bits->mask) == bits->val)
   s = bits->set;
  else
   s = bits->clear;

  if (s)
   pt_dump_seq_printf(st->seq, " %s", s);
 }
}
