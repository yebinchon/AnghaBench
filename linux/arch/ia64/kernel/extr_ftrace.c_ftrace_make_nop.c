
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct dyn_ftrace {int ip; } ;


 int ftrace_make_nop_check (struct dyn_ftrace*,unsigned long) ;
 int ftrace_modify_code (int ,int *,char*,int ) ;
 char* ftrace_nop_replace () ;

int ftrace_make_nop(struct module *mod,
      struct dyn_ftrace *rec, unsigned long addr)
{
 int ret;
 char *new;

 ret = ftrace_make_nop_check(rec, addr);
 if (ret)
  return ret;
 new = ftrace_nop_replace();
 return ftrace_modify_code(rec->ip, ((void*)0), new, 0);
}
