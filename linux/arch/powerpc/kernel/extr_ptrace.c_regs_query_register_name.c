
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs_offset {char const* name; unsigned int offset; } ;


 struct pt_regs_offset* regoffset_table ;

const char *regs_query_register_name(unsigned int offset)
{
 const struct pt_regs_offset *roff;
 for (roff = regoffset_table; roff->name != ((void*)0); roff++)
  if (roff->offset == offset)
   return roff->name;
 return ((void*)0);
}
