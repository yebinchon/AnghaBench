
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct rio_mport {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pw_regs; } ;
struct TYPE_3__ {int pwmr; } ;


 int RIO_IPWMR_PWE ;
 int in_be32 (int *) ;
 int out_be32 (int *,int ) ;
 TYPE_2__* pw ;

int fsl_rio_pw_enable(struct rio_mport *mport, int enable)
{
 u32 rval;

 rval = in_be32(&pw->pw_regs->pwmr);

 if (enable)
  rval |= RIO_IPWMR_PWE;
 else
  rval &= ~RIO_IPWMR_PWE;

 out_be32(&pw->pw_regs->pwmr, rval);

 return 0;
}
