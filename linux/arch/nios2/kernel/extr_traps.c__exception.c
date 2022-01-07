
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int _send_sig (int,int,unsigned long) ;
 int die (char*,struct pt_regs*,int) ;
 int user_mode (struct pt_regs*) ;

void _exception(int signo, struct pt_regs *regs, int code, unsigned long addr)
{
 if (!user_mode(regs))
  die("Exception in kernel mode", regs, signo);

 _send_sig(signo, code, addr);
}
