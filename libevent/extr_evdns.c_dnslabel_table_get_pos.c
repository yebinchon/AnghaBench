
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dnslabel_table {int n_labels; TYPE_1__* labels; } ;
struct TYPE_2__ {int pos; int v; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int
dnslabel_table_get_pos(const struct dnslabel_table *table, const char *label)
{
 int i;
 for (i = 0; i < table->n_labels; ++i) {
  if (!strcmp(label, table->labels[i].v))
   return table->labels[i].pos;
 }
 return -1;
}
