
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dnslabel_table {scalar_t__ n_labels; TYPE_1__* labels; } ;
typedef int off_t ;
struct TYPE_2__ {char* v; int pos; } ;


 scalar_t__ MAX_LABELS ;
 char* mm_strdup (char const*) ;

__attribute__((used)) static int
dnslabel_table_add(struct dnslabel_table *table, const char *label, off_t pos)
{
 char *v;
 int p;
 if (table->n_labels == MAX_LABELS)
  return (-1);
 v = mm_strdup(label);
 if (v == ((void*)0))
  return (-1);
 p = table->n_labels++;
 table->labels[p].v = v;
 table->labels[p].pos = pos;

 return (0);
}
