
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_3__ {unsigned long addr; } ;
struct TYPE_4__ {TYPE_1__ gpsw; } ;


 TYPE_2__* sie_block (struct pt_regs*) ;

__attribute__((used)) static unsigned long instruction_pointer_guest(struct pt_regs *regs)
{
 return sie_block(regs)->gpsw.addr;
}
