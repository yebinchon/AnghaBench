
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pg_state {int marker; int start_address; struct seq_file* seq; } ;


 int PAGE_OFFSET ;
 int address_markers ;
 int walk_linearmapping (struct pg_state*) ;
 int walk_pagetables (struct pg_state*) ;
 int walk_vmemmap (struct pg_state*) ;

__attribute__((used)) static int ptdump_show(struct seq_file *m, void *v)
{
 struct pg_state st = {
  .seq = m,
  .start_address = PAGE_OFFSET,
  .marker = address_markers,
 };




 walk_linearmapping(&st);
 walk_pagetables(&st);
 walk_vmemmap(&st);
 return 0;
}
