
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kernel_asce; } ;
struct TYPE_3__ {unsigned long start_address; } ;


 size_t MODULES_NR ;
 unsigned long MODULES_VADDR ;
 TYPE_2__ S390_lowcore ;
 size_t VMALLOC_NR ;
 unsigned long VMALLOC_START ;
 size_t VMEMMAP_NR ;
 int _REGION_ENTRY_TYPE_MASK ;
 TYPE_1__* address_markers ;
 int debugfs_create_file (char*,int,int *,int *,int *) ;
 int max_addr ;
 int ptdump_fops ;
 scalar_t__ vmemmap ;

__attribute__((used)) static int pt_dump_init(void)
{





 max_addr = (S390_lowcore.kernel_asce & _REGION_ENTRY_TYPE_MASK) >> 2;
 max_addr = 1UL << (max_addr * 11 + 31);
 address_markers[MODULES_NR].start_address = MODULES_VADDR;
 address_markers[VMEMMAP_NR].start_address = (unsigned long) vmemmap;
 address_markers[VMALLOC_NR].start_address = VMALLOC_START;
 debugfs_create_file("kernel_page_tables", 0400, ((void*)0), ((void*)0), &ptdump_fops);
 return 0;
}
