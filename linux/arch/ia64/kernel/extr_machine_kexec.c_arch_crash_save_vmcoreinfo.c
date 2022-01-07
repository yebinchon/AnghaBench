
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NUMNODES ;
 int NR_NODE_MEMBLKS ;
 int PGTABLE_3 ;
 int PGTABLE_4 ;
 int VMCOREINFO_CONFIG (int ) ;
 int VMCOREINFO_LENGTH (int ,int ) ;
 int VMCOREINFO_OFFSET (int ,int ) ;
 int VMCOREINFO_STRUCT_SIZE (int ) ;
 int VMCOREINFO_SYMBOL (int ) ;
 int node_memblk ;
 int node_memblk_s ;
 int pgdat_list ;
 int size ;
 int start_paddr ;

void arch_crash_save_vmcoreinfo(void)
{
}
