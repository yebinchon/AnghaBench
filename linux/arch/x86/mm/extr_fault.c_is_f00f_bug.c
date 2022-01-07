
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {unsigned long address; } ;


 int X86_BUG_F00F ;
 scalar_t__ boot_cpu_has_bug (int ) ;
 int do_invalid_op (struct pt_regs*,int ) ;
 TYPE_1__ idt_descr ;

__attribute__((used)) static int is_f00f_bug(struct pt_regs *regs, unsigned long address)
{
 return 0;
}
