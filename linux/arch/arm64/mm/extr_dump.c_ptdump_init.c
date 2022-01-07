
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start_address; } ;


 int KASAN_SHADOW_START ;
 size_t KASAN_START_NR ;
 int PAGE_END ;
 size_t PAGE_END_NR ;
 TYPE_1__* address_markers ;
 int kernel_ptdump_info ;
 int ptdump_debugfs_register (int *,char*) ;
 int ptdump_initialize () ;

__attribute__((used)) static int ptdump_init(void)
{
 address_markers[PAGE_END_NR].start_address = PAGE_END;



 ptdump_initialize();
 ptdump_debugfs_register(&kernel_ptdump_info, "kernel_page_tables");
 return 0;
}
