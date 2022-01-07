
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct diff_options {scalar_t__ color_moved; TYPE_2__* emitted_symbols; } ;
struct TYPE_4__ {TYPE_1__* buf; } ;
struct TYPE_3__ {char* line; int flags; } ;


 int COLOR_MOVED_MIN_ALNUM_COUNT ;
 scalar_t__ COLOR_MOVED_PLAIN ;
 int DIFF_SYMBOL_MOVED_LINE ;
 int isalnum (char const) ;

__attribute__((used)) static int adjust_last_block(struct diff_options *o, int n, int block_length)
{
 int i, alnum_count = 0;
 if (o->color_moved == COLOR_MOVED_PLAIN)
  return block_length;
 for (i = 1; i < block_length + 1; i++) {
  const char *c = o->emitted_symbols->buf[n - i].line;
  for (; *c; c++) {
   if (!isalnum(*c))
    continue;
   alnum_count++;
   if (alnum_count >= COLOR_MOVED_MIN_ALNUM_COUNT)
    return 1;
  }
 }
 for (i = 1; i < block_length + 1; i++)
  o->emitted_symbols->buf[n - i].flags &= ~DIFF_SYMBOL_MOVED_LINE;
 return 0;
}
