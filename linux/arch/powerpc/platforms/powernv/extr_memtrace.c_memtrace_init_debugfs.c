
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memtrace_entry {int start; int size; int nid; struct dentry* dir; int name; int mem; } ;
struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,struct dentry*,struct memtrace_entry*,int *) ;
 int debugfs_create_x64 (char*,int,struct dentry*,int*) ;
 int ioremap (int,int) ;
 struct memtrace_entry* memtrace_array ;
 int memtrace_array_nr ;
 int memtrace_debugfs_dir ;
 int memtrace_fops ;
 int pr_err (char*,int) ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int memtrace_init_debugfs(void)
{
 int ret = 0;
 int i;

 for (i = 0; i < memtrace_array_nr; i++) {
  struct dentry *dir;
  struct memtrace_entry *ent = &memtrace_array[i];

  ent->mem = ioremap(ent->start, ent->size);

  if (!ent->mem) {
   pr_err("Failed to map trace memory at 0x%llx\n",
     ent->start);
   ret = -1;
   continue;
  }

  snprintf(ent->name, 16, "%08x", ent->nid);
  dir = debugfs_create_dir(ent->name, memtrace_debugfs_dir);
  if (!dir) {
   pr_err("Failed to create debugfs directory for node %d\n",
    ent->nid);
   return -1;
  }

  ent->dir = dir;
  debugfs_create_file("trace", 0400, dir, ent, &memtrace_fops);
  debugfs_create_x64("start", 0400, dir, &ent->start);
  debugfs_create_x64("size", 0400, dir, &ent->size);
 }

 return ret;
}
