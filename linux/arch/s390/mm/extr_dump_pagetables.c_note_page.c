
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct pg_state {unsigned int current_prot; int level; scalar_t__ current_address; int start_address; TYPE_1__* marker; } ;
struct TYPE_2__ {scalar_t__ start_address; int name; } ;


 TYPE_1__* address_markers ;
 int print_prot (struct seq_file*,unsigned int,int) ;
 int seq_printf (struct seq_file*,char*,int,...) ;

__attribute__((used)) static void note_page(struct seq_file *m, struct pg_state *st,
       unsigned int new_prot, int level)
{
 static const char units[] = "KMGTPE";
 int width = sizeof(unsigned long) * 2;
 const char *unit = units;
 unsigned int prot, cur;
 unsigned long delta;






 prot = new_prot;
 cur = st->current_prot;

 if (!st->level) {

  st->current_prot = new_prot;
  st->level = level;
  st->marker = address_markers;
  seq_printf(m, "---[ %s ]---\n", st->marker->name);
 } else if (prot != cur || level != st->level ||
     st->current_address >= st->marker[1].start_address) {

  seq_printf(m, "0x%0*lx-0x%0*lx ",
      width, st->start_address,
      width, st->current_address);
  delta = (st->current_address - st->start_address) >> 10;
  while (!(delta & 0x3ff) && unit[1]) {
   delta >>= 10;
   unit++;
  }
  seq_printf(m, "%9lu%c ", delta, *unit);
  print_prot(m, st->current_prot, st->level);
  while (st->current_address >= st->marker[1].start_address) {
   st->marker++;
   seq_printf(m, "---[ %s ]---\n", st->marker->name);
  }
  st->start_address = st->current_address;
  st->current_prot = new_prot;
  st->level = level;
 }
}
