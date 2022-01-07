
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EAGAIN ;
 int EINVAL ;
 int memory_block_size_bytes () ;
 scalar_t__ memtrace_init_debugfs () ;
 scalar_t__ memtrace_init_regions_runtime (int) ;
 scalar_t__ memtrace_online () ;
 int memtrace_size ;
 int pr_err (char*,int) ;

__attribute__((used)) static int memtrace_enable_set(void *data, u64 val)
{
 u64 bytes;





 bytes = memory_block_size_bytes();
 if (val & (bytes - 1)) {
  pr_err("Value must be aligned with 0x%llx\n", bytes);
  return -EINVAL;
 }


 if (memtrace_size) {
  if (memtrace_online())
   return -EAGAIN;
 }

 if (!val)
  return 0;


 if (memtrace_init_regions_runtime(val))
  return -EINVAL;

 if (memtrace_init_debugfs())
  return -EINVAL;

 memtrace_size = val;

 return 0;
}
