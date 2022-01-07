
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_GPRS ;
 char const** gpr_names ;

const char *regs_query_register_name(unsigned int offset)
{
 if (offset >= NUM_GPRS)
  return ((void*)0);
 return gpr_names[offset];
}
