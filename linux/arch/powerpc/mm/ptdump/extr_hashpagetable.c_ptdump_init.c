
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int ENOMEM ;
 struct dentry* debugfs_create_file (char*,int,int *,int *,int *) ;
 int populate_markers () ;
 int ptdump_fops ;
 int radix_enabled () ;

__attribute__((used)) static int ptdump_init(void)
{
 struct dentry *debugfs_file;

 if (!radix_enabled()) {
  populate_markers();
  debugfs_file = debugfs_create_file("kernel_hash_pagetable",
    0400, ((void*)0), ((void*)0), &ptdump_fops);
  return debugfs_file ? 0 : -ENOMEM;
 }
 return 0;
}
