
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct task_struct {int dummy; } ;


 int DBG (int ,char*) ;
 int DBG_MEM ;
 long EIO ;
 int FOLL_FORCE ;






 int force_successful_syscall_return () ;
 long generic_ptrace_pokedata (struct task_struct*,unsigned long,unsigned long) ;
 long get_reg (struct task_struct*,unsigned long) ;
 size_t ptrace_access_vm (struct task_struct*,unsigned long,unsigned long*,int,int ) ;
 long ptrace_request (struct task_struct*,long,unsigned long,unsigned long) ;
 long put_reg (struct task_struct*,unsigned long,unsigned long) ;

long arch_ptrace(struct task_struct *child, long request,
   unsigned long addr, unsigned long data)
{
 unsigned long tmp;
 size_t copied;
 long ret;

 switch (request) {

 case 132:
 case 133:
  copied = ptrace_access_vm(child, addr, &tmp, sizeof(tmp),
    FOLL_FORCE);
  ret = -EIO;
  if (copied != sizeof(tmp))
   break;

  force_successful_syscall_return();
  ret = tmp;
  break;


 case 131:
  force_successful_syscall_return();
  ret = get_reg(child, addr);
  DBG(DBG_MEM, ("peek $%lu->%#lx\n", addr, ret));
  break;


 case 129:
 case 130:
  ret = generic_ptrace_pokedata(child, addr, data);
  break;

 case 128:
  DBG(DBG_MEM, ("poke $%lu<-%#lx\n", addr, data));
  ret = put_reg(child, addr, data);
  break;
 default:
  ret = ptrace_request(child, request, addr, data);
  break;
 }
 return ret;
}
