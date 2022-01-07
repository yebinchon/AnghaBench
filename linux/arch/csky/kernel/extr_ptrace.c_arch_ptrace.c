
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 long EIO ;
 long ptrace_request (struct task_struct*,long,unsigned long,unsigned long) ;

long arch_ptrace(struct task_struct *child, long request,
   unsigned long addr, unsigned long data)
{
 long ret = -EIO;

 switch (request) {
 default:
  ret = ptrace_request(child, request, addr, data);
  break;
 }

 return ret;
}
