
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int RCU_LOCKDEP_WARN (int,char*) ;
 int preempt_disable () ;
 int rcu_is_watching () ;
 int rcu_nmi_enter () ;
 scalar_t__ user_mode (struct pt_regs*) ;

void ist_enter(struct pt_regs *regs)
{
 if (user_mode(regs)) {
  RCU_LOCKDEP_WARN(!rcu_is_watching(), "entry code didn't wake RCU");
 } else {






  rcu_nmi_enter();
 }

 preempt_disable();


 RCU_LOCKDEP_WARN(!rcu_is_watching(), "ist_enter didn't work");
}
