
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emitted_diff_symbol {scalar_t__ s; int flags; } ;
struct diff_options {TYPE_1__* emitted_symbols; } ;
struct TYPE_2__ {int nr; struct emitted_diff_symbol* buf; } ;


 scalar_t__ DIFF_SYMBOL_MINUS ;
 int DIFF_SYMBOL_MOVED_LINE ;
 int DIFF_SYMBOL_MOVED_LINE_ALT ;
 int DIFF_SYMBOL_MOVED_LINE_UNINTERESTING ;
 int DIFF_SYMBOL_MOVED_LINE_ZEBRA_MASK ;
 scalar_t__ DIFF_SYMBOL_PLUS ;

__attribute__((used)) static void dim_moved_lines(struct diff_options *o)
{
 int n;
 for (n = 0; n < o->emitted_symbols->nr; n++) {
  struct emitted_diff_symbol *prev = (n != 0) ?
    &o->emitted_symbols->buf[n - 1] : ((void*)0);
  struct emitted_diff_symbol *l = &o->emitted_symbols->buf[n];
  struct emitted_diff_symbol *next =
    (n < o->emitted_symbols->nr - 1) ?
    &o->emitted_symbols->buf[n + 1] : ((void*)0);


  if (l->s != DIFF_SYMBOL_PLUS && l->s != DIFF_SYMBOL_MINUS)
   continue;


  if (!(l->flags & DIFF_SYMBOL_MOVED_LINE))
   continue;





  if (prev && prev->s != DIFF_SYMBOL_PLUS &&
       prev->s != DIFF_SYMBOL_MINUS)
   prev = ((void*)0);
  if (next && next->s != DIFF_SYMBOL_PLUS &&
       next->s != DIFF_SYMBOL_MINUS)
   next = ((void*)0);


  if ((prev &&
      (prev->flags & DIFF_SYMBOL_MOVED_LINE_ZEBRA_MASK) ==
      (l->flags & DIFF_SYMBOL_MOVED_LINE_ZEBRA_MASK)) &&
      (next &&
      (next->flags & DIFF_SYMBOL_MOVED_LINE_ZEBRA_MASK) ==
      (l->flags & DIFF_SYMBOL_MOVED_LINE_ZEBRA_MASK))) {
   l->flags |= DIFF_SYMBOL_MOVED_LINE_UNINTERESTING;
   continue;
  }


  if (prev && (prev->flags & DIFF_SYMBOL_MOVED_LINE) &&
      (prev->flags & DIFF_SYMBOL_MOVED_LINE_ALT) !=
         (l->flags & DIFF_SYMBOL_MOVED_LINE_ALT))
   continue;
  if (next && (next->flags & DIFF_SYMBOL_MOVED_LINE) &&
      (next->flags & DIFF_SYMBOL_MOVED_LINE_ALT) !=
         (l->flags & DIFF_SYMBOL_MOVED_LINE_ALT))
   continue;





  l->flags |= DIFF_SYMBOL_MOVED_LINE_UNINTERESTING;
 }
}
