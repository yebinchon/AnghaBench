
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dyn_ftrace {int dummy; } ;



int ftrace_modify_call(struct dyn_ftrace *rec, unsigned long old_addr,
         unsigned long addr)
{
 return 0;
}
