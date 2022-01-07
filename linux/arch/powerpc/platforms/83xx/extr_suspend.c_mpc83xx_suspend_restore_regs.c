
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sccr; } ;
struct TYPE_5__ {int sccr; int sicrh; int sicrl; } ;
struct TYPE_4__ {int sicrh; int sicrl; } ;


 TYPE_3__* clock_regs ;
 int out_be32 (int *,int ) ;
 TYPE_2__ saved_regs ;
 TYPE_1__* syscr_regs ;

__attribute__((used)) static void mpc83xx_suspend_restore_regs(void)
{
 out_be32(&syscr_regs->sicrl, saved_regs.sicrl);
 out_be32(&syscr_regs->sicrh, saved_regs.sicrh);
 out_be32(&clock_regs->sccr, saved_regs.sccr);
}
