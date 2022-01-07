
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct moved_entry {TYPE_2__* es; } ;
struct moved_block {int wsd; } ;
struct emitted_diff_symbol {int len; char* line; int indent_off; int indent_width; } ;
struct diff_options {TYPE_1__* emitted_symbols; } ;
struct TYPE_4__ {int len; char* line; int indent_off; int indent_width; scalar_t__ s; } ;
struct TYPE_3__ {struct emitted_diff_symbol* buf; } ;


 scalar_t__ DIFF_SYMBOL_PLUS ;
 int INDENT_BLANKLINE ;
 int memcmp (char const*,char const*,int) ;

__attribute__((used)) static int cmp_in_block_with_wsd(const struct diff_options *o,
     const struct moved_entry *cur,
     const struct moved_entry *match,
     struct moved_block *pmb,
     int n)
{
 struct emitted_diff_symbol *l = &o->emitted_symbols->buf[n];
 int al = cur->es->len, bl = match->es->len, cl = l->len;
 const char *a = cur->es->line,
     *b = match->es->line,
     *c = l->line;
 int a_off = cur->es->indent_off,
     a_width = cur->es->indent_width,
     c_off = l->indent_off,
     c_width = l->indent_width;
 int delta;
 if (al != bl)
  return 1;


 if (a_width == INDENT_BLANKLINE && c_width == INDENT_BLANKLINE)
  return 0;







 if (cur->es->s == DIFF_SYMBOL_PLUS)
  delta = a_width - c_width;
 else
  delta = c_width - a_width;





 if (pmb->wsd == INDENT_BLANKLINE)
  pmb->wsd = delta;

 return !(delta == pmb->wsd && al - a_off == cl - c_off &&
   !memcmp(a, b, al) && !
   memcmp(a + a_off, c + c_off, al - a_off));
}
