
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned char EXR_TRACE ;
 int PT_EXR ;
 unsigned char h8300_get_reg (struct task_struct*,int ) ;
 int h8300_put_reg (struct task_struct*,int ,unsigned char) ;

void user_enable_single_step(struct task_struct *child)
{
 unsigned char exr;

 exr = h8300_get_reg(child, PT_EXR);
 exr |= EXR_TRACE;
 h8300_put_reg(child, PT_EXR, exr);
}
