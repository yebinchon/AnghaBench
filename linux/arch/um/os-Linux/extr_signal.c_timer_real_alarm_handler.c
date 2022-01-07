
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {int dummy; } ;
typedef int regs ;
typedef int mcontext_t ;


 int SIGALRM ;
 int get_regs_from_mc (struct uml_pt_regs*,int *) ;
 int memset (struct uml_pt_regs*,int ,int) ;
 int timer_handler (int ,int *,struct uml_pt_regs*) ;

__attribute__((used)) static void timer_real_alarm_handler(mcontext_t *mc)
{
 struct uml_pt_regs regs;

 if (mc != ((void*)0))
  get_regs_from_mc(&regs, mc);
 else
  memset(&regs, 0, sizeof(regs));
 timer_handler(SIGALRM, ((void*)0), &regs);
}
