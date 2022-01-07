
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int ENOMEM ;
 int build_pgtable_complete_mask () ;
 struct dentry* debugfs_create_file (char*,int,int *,int *,int *) ;
 int populate_markers () ;
 int ptdump_fops ;

__attribute__((used)) static int ptdump_init(void)
{
 struct dentry *debugfs_file;

 populate_markers();
 build_pgtable_complete_mask();
 debugfs_file = debugfs_create_file("kernel_page_tables", 0400, ((void*)0),
   ((void*)0), &ptdump_fops);
 return debugfs_file ? 0 : -ENOMEM;
}
