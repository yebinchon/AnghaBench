
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,int *,int *) ;
 int memtrace_debugfs_dir ;
 int memtrace_init_fops ;
 int powerpc_debugfs_root ;

__attribute__((used)) static int memtrace_init(void)
{
 memtrace_debugfs_dir = debugfs_create_dir("memtrace",
        powerpc_debugfs_root);
 if (!memtrace_debugfs_dir)
  return -1;

 debugfs_create_file("enable", 0600, memtrace_debugfs_dir,
       ((void*)0), &memtrace_init_fops);

 return 0;
}
