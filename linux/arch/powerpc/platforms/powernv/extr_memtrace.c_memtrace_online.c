
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memtrace_entry {scalar_t__ nid; scalar_t__ start; scalar_t__ size; int dir; scalar_t__ mem; } ;


 scalar_t__ NUMA_NO_NODE ;
 scalar_t__ add_memory (scalar_t__,scalar_t__,scalar_t__) ;
 int debugfs_remove_recursive (int ) ;
 int iounmap (scalar_t__) ;
 int kfree (struct memtrace_entry*) ;
 int lock_device_hotplug () ;
 int memhp_auto_online ;
 struct memtrace_entry* memtrace_array ;
 int memtrace_array_nr ;
 scalar_t__ memtrace_size ;
 int online_mem_block ;
 int pr_err (char*,scalar_t__) ;
 int pr_info (char*,scalar_t__) ;
 int unlock_device_hotplug () ;
 int walk_memory_blocks (scalar_t__,scalar_t__,int *,int ) ;

__attribute__((used)) static int memtrace_online(void)
{
 int i, ret = 0;
 struct memtrace_entry *ent;

 for (i = memtrace_array_nr - 1; i >= 0; i--) {
  ent = &memtrace_array[i];


  if (ent->nid == NUMA_NO_NODE)
   continue;


  if (ent->mem) {
   iounmap(ent->mem);
   ent->mem = 0;
  }

  if (add_memory(ent->nid, ent->start, ent->size)) {
   pr_err("Failed to add trace memory to node %d\n",
    ent->nid);
   ret += 1;
   continue;
  }





  if (!memhp_auto_online) {
   lock_device_hotplug();
   walk_memory_blocks(ent->start, ent->size, ((void*)0),
        online_mem_block);
   unlock_device_hotplug();
  }





  debugfs_remove_recursive(ent->dir);
  pr_info("Added trace memory back to node %d\n", ent->nid);
  ent->size = ent->start = ent->nid = NUMA_NO_NODE;
 }
 if (ret)
  return ret;


 kfree(memtrace_array);
 memtrace_array = ((void*)0);
 memtrace_size = 0;
 memtrace_array_nr = 0;
 return 0;
}
