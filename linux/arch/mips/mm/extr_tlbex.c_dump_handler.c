
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pr_debug (char*,...) ;

__attribute__((used)) static inline void dump_handler(const char *symbol, const void *start, const void *end)
{
 unsigned int count = (end - start) / sizeof(u32);
 const u32 *handler = start;
 int i;

 pr_debug("LEAF(%s)\n", symbol);

 pr_debug("\t.set push\n");
 pr_debug("\t.set noreorder\n");

 for (i = 0; i < count; i++)
  pr_debug("\t.word\t0x%08x\t\t# %p\n", handler[i], &handler[i]);

 pr_debug("\t.set\tpop\n");

 pr_debug("\tEND(%s)\n", symbol);
}
