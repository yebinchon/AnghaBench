
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct equiv_cpu_table {unsigned int num_entries; struct equiv_cpu_entry* entry; } ;
struct equiv_cpu_entry {scalar_t__ installed_cpu; int equiv_cpu; } ;



__attribute__((used)) static u16 find_equiv_id(struct equiv_cpu_table *et, u32 sig)
{
 unsigned int i;

 if (!et || !et->num_entries)
  return 0;

 for (i = 0; i < et->num_entries; i++) {
  struct equiv_cpu_entry *e = &et->entry[i];

  if (sig == e->installed_cpu)
   return e->equiv_cpu;

  e++;
 }
 return 0;
}
