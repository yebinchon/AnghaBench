
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ line_pos; } ;
typedef TYPE_1__ pot_orig_line_entry_t ;



int sort_pot_orig_line (const void *v1, const void *v2)
{
  const pot_orig_line_entry_t *t1 = (const pot_orig_line_entry_t *) v1;
  const pot_orig_line_entry_t *t2 = (const pot_orig_line_entry_t *) v2;

  return t1->line_pos > t2->line_pos;
}
