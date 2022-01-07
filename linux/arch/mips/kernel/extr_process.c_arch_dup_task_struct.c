
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int _save_fp (int ) ;
 int current ;
 scalar_t__ is_fpu_owner () ;
 scalar_t__ is_msa_enabled () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int save_dsp (int ) ;
 int save_msa (int ) ;

int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
{







 preempt_disable();

 if (is_msa_enabled())
  save_msa(current);
 else if (is_fpu_owner())
  _save_fp(current);

 save_dsp(current);

 preempt_enable();

 *dst = *src;
 return 0;
}
