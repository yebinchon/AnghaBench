
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NUMNODES ;
 int VMCOREINFO_LENGTH (int ,int ) ;
 int VMCOREINFO_OFFSET (int ,int ) ;
 int VMCOREINFO_STRUCT_SIZE (int ) ;
 int VMCOREINFO_SYMBOL (int ) ;
 int contig_page_data ;
 int list ;
 int mmu_psize_def ;
 int mmu_psize_defs ;
 int mmu_vmemmap_psize ;
 int node_data ;
 int phys ;
 int shift ;
 int virt_addr ;
 int vmemmap_backing ;
 int vmemmap_list ;

void arch_crash_save_vmcoreinfo(void)
{






 VMCOREINFO_SYMBOL(contig_page_data);
}
