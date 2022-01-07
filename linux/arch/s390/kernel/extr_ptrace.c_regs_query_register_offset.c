
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long NUM_GPRS ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;

int regs_query_register_offset(const char *name)
{
 unsigned long offset;

 if (!name || *name != 'r')
  return -EINVAL;
 if (kstrtoul(name + 1, 10, &offset))
  return -EINVAL;
 if (offset >= NUM_GPRS)
  return -EINVAL;
 return offset;
}
