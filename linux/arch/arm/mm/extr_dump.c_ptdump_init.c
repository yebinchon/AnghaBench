
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kernel_ptdump_info ;
 int ptdump_debugfs_register (int *,char*) ;
 int ptdump_initialize () ;

__attribute__((used)) static int ptdump_init(void)
{
 ptdump_initialize();
 ptdump_debugfs_register(&kernel_ptdump_info, "kernel_page_tables");
 return 0;
}
