
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orc_entry {int dummy; } ;


 unsigned long LOOKUP_BLOCK_SIZE ;
 unsigned long LOOKUP_START_IP ;
 unsigned long LOOKUP_STOP_IP ;
 struct orc_entry* __orc_find (unsigned int,scalar_t__,unsigned int,unsigned long) ;
 scalar_t__ __start_orc_unwind ;
 unsigned int __start_orc_unwind_ip ;
 scalar_t__ __stop_orc_unwind ;
 unsigned int __stop_orc_unwind_ip ;
 scalar_t__ init_kernel_text (unsigned long) ;
 int lookup_num_blocks ;
 struct orc_entry null_orc_entry ;
 struct orc_entry* orc_ftrace_find (unsigned long) ;
 int orc_init ;
 int* orc_lookup ;
 struct orc_entry* orc_module_find (unsigned long) ;
 int orc_warn (char*,unsigned int,int,unsigned int,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct orc_entry *orc_find(unsigned long ip)
{
 static struct orc_entry *orc;

 if (!orc_init)
  return ((void*)0);

 if (ip == 0)
  return &null_orc_entry;


 if (ip >= LOOKUP_START_IP && ip < LOOKUP_STOP_IP) {
  unsigned int idx, start, stop;

  idx = (ip - LOOKUP_START_IP) / LOOKUP_BLOCK_SIZE;

  if (unlikely((idx >= lookup_num_blocks-1))) {
   orc_warn("WARNING: bad lookup idx: idx=%u num=%u ip=%pB\n",
     idx, lookup_num_blocks, (void *)ip);
   return ((void*)0);
  }

  start = orc_lookup[idx];
  stop = orc_lookup[idx + 1] + 1;

  if (unlikely((__start_orc_unwind + start >= __stop_orc_unwind) ||
        (__start_orc_unwind + stop > __stop_orc_unwind))) {
   orc_warn("WARNING: bad lookup value: idx=%u num=%u start=%u stop=%u ip=%pB\n",
     idx, lookup_num_blocks, start, stop, (void *)ip);
   return ((void*)0);
  }

  return __orc_find(__start_orc_unwind_ip + start,
      __start_orc_unwind + start, stop - start, ip);
 }


 if (init_kernel_text(ip))
  return __orc_find(__start_orc_unwind_ip, __start_orc_unwind,
      __stop_orc_unwind_ip - __start_orc_unwind_ip, ip);


 orc = orc_module_find(ip);
 if (orc)
  return orc;

 return orc_ftrace_find(ip);
}
