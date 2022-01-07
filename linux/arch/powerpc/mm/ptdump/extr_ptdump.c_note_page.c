
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct pg_state {unsigned int level; scalar_t__ current_flags; unsigned long start_address; scalar_t__ start_pa; scalar_t__ last_pa; TYPE_1__* marker; int seq; } ;
struct TYPE_4__ {scalar_t__ mask; int num; scalar_t__ flag; } ;
struct TYPE_3__ {unsigned long start_address; int name; } ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ PTE_RPN_MASK ;
 int dump_addr (struct pg_state*,unsigned long) ;
 int dump_flag_info (struct pg_state*,scalar_t__,scalar_t__,int ) ;
 int note_prot_wx (struct pg_state*,unsigned long) ;
 TYPE_2__* pg_level ;
 int pt_dump_seq_printf (int ,char*,int ) ;
 int pt_dump_seq_putc (int ,char) ;

__attribute__((used)) static void note_page(struct pg_state *st, unsigned long addr,
        unsigned int level, u64 val)
{
 u64 flag = val & pg_level[level].mask;
 u64 pa = val & PTE_RPN_MASK;


 if (!st->level) {
  st->level = level;
  st->current_flags = flag;
  st->start_address = addr;
  st->start_pa = pa;
  st->last_pa = pa;
  pt_dump_seq_printf(st->seq, "---[ %s ]---\n", st->marker->name);
 } else if (flag != st->current_flags || level != st->level ||
     addr >= st->marker[1].start_address ||
     (pa != st->last_pa + PAGE_SIZE &&
      (pa != st->start_pa || st->start_pa != st->last_pa))) {


  if (st->current_flags) {
   note_prot_wx(st, addr);
   dump_addr(st, addr);


   if (pg_level[st->level].flag)
    dump_flag_info(st, pg_level[st->level].flag,
       st->current_flags,
       pg_level[st->level].num);

   pt_dump_seq_putc(st->seq, '\n');
  }





  while (addr >= st->marker[1].start_address) {
   st->marker++;
   pt_dump_seq_printf(st->seq, "---[ %s ]---\n", st->marker->name);
  }
  st->start_address = addr;
  st->start_pa = pa;
  st->last_pa = pa;
  st->current_flags = flag;
  st->level = level;
 } else {
  st->last_pa = pa;
 }
}
