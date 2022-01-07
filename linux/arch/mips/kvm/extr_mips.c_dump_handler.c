
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pr_debug (char*,...) ;

__attribute__((used)) static inline void dump_handler(const char *symbol, void *start, void *end)
{
 u32 *p;

 pr_debug("LEAF(%s)\n", symbol);

 pr_debug("\t.set push\n");
 pr_debug("\t.set noreorder\n");

 for (p = start; p < (u32 *)end; ++p)
  pr_debug("\t.word\t0x%08x\t\t# %p\n", *p, p);

 pr_debug("\t.set\tpop\n");

 pr_debug("\tEND(%s)\n", symbol);
}
