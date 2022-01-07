
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {int start_address; int marker; struct seq_file* seq; } ;


 int KERN_VIRT_START ;
 int PAGE_OFFSET ;
 int address_markers ;
 int note_page (struct pg_state*,int ,int ,int ) ;
 int radix_enabled () ;
 int walk_pagetables (struct pg_state*) ;

__attribute__((used)) static int ptdump_show(struct seq_file *m, void *v)
{
 struct pg_state st = {
  .seq = m,
  .marker = address_markers,
  .start_address = PAGE_OFFSET,
 };







 walk_pagetables(&st);
 note_page(&st, 0, 0, 0);
 return 0;
}
