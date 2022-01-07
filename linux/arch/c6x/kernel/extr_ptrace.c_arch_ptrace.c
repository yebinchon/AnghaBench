
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;



 int flush_icache_range (unsigned long,unsigned long) ;
 int generic_ptrace_pokedata (struct task_struct*,unsigned long,unsigned long) ;
 int ptrace_request (struct task_struct*,long,unsigned long,unsigned long) ;

long arch_ptrace(struct task_struct *child, long request,
   unsigned long addr, unsigned long data)
{
 int ret = 0;

 switch (request) {



 case 128:
  ret = generic_ptrace_pokedata(child, addr, data);
  if (ret == 0 && request == 128)
   flush_icache_range(addr, addr + 4);
  break;
 default:
  ret = ptrace_request(child, request, addr, data);
  break;
 }

 return ret;
}
