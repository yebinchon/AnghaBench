
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int (* handle_interrupt ) (struct pt_regs*,int ) ;} ;


 int ctr ;
 TYPE_1__* model ;
 int stub1 (struct pt_regs*,int ) ;

__attribute__((used)) static void op_handle_interrupt(struct pt_regs *regs)
{
 model->handle_interrupt(regs, ctr);
}
