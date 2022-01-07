
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __USER_CS ;
 int __USER_DS ;
 int start_thread_common (struct pt_regs*,unsigned long,unsigned long,int ,int ,int ) ;

void
start_thread(struct pt_regs *regs, unsigned long new_ip, unsigned long new_sp)
{
 start_thread_common(regs, new_ip, new_sp,
       __USER_CS, __USER_DS, 0);
}
