
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {TYPE_1__* dbell_regs; } ;
struct TYPE_7__ {TYPE_2__* pw_regs; } ;
struct TYPE_6__ {int pwsr; } ;
struct TYPE_5__ {int dsr; int odsr; } ;


 int IDSR_CLEAR ;
 int IMSR_CLEAR ;
 int IPWSR_CLEAR ;
 int ODSR_CLEAR ;
 int OMSR_CLEAR ;
 scalar_t__ RIO_IM0SR ;
 scalar_t__ RIO_IM1SR ;
 scalar_t__ RIO_LTLEDCSR ;
 scalar_t__ RIO_OM0SR ;
 scalar_t__ RIO_OM1SR ;
 TYPE_4__* dbell ;
 int out_be32 (int *,int ) ;
 TYPE_3__* pw ;
 scalar_t__ rio_regs_win ;
 scalar_t__ rmu_regs_win ;

void msg_unit_error_handler(void)
{


 out_be32((u32 *)(rio_regs_win + RIO_LTLEDCSR), 0);

 out_be32((u32 *)(rmu_regs_win + RIO_IM0SR), IMSR_CLEAR);
 out_be32((u32 *)(rmu_regs_win + RIO_IM1SR), IMSR_CLEAR);
 out_be32((u32 *)(rmu_regs_win + RIO_OM0SR), OMSR_CLEAR);
 out_be32((u32 *)(rmu_regs_win + RIO_OM1SR), OMSR_CLEAR);

 out_be32(&dbell->dbell_regs->odsr, ODSR_CLEAR);
 out_be32(&dbell->dbell_regs->dsr, IDSR_CLEAR);

 out_be32(&pw->pw_regs->pwsr, IPWSR_CLEAR);
}
