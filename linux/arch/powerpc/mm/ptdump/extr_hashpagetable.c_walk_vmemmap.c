
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmemmap_backing {struct vmemmap_backing* list; int virt_addr; } ;
struct pg_state {int seq; } ;


 int CONFIG_SPARSEMEM_VMEMMAP ;
 int IS_ENABLED (int ) ;
 int hpte_find (struct pg_state*,int ,int ) ;
 int mmu_vmemmap_psize ;
 int seq_puts (int ,char*) ;
 struct vmemmap_backing* vmemmap_list ;

__attribute__((used)) static void walk_vmemmap(struct pg_state *st)
{
 struct vmemmap_backing *ptr = vmemmap_list;

 if (!IS_ENABLED(CONFIG_SPARSEMEM_VMEMMAP))
  return;




 while (ptr->list) {
  hpte_find(st, ptr->virt_addr, mmu_vmemmap_psize);
  ptr = ptr->list;
 }
 seq_puts(st->seq, "---[ vmemmap end ]---\n");
}
