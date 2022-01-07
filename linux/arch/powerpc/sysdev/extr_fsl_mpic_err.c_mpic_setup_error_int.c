
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct mpic {int * err_int_vecs; int flags; int name; TYPE_1__ hc_err; int err_regs; scalar_t__ paddr; } ;


 int ENOMEM ;
 scalar_t__ MPIC_ERR_INT_BASE ;
 int MPIC_FSL_HAS_EIMR ;
 int MPIC_MAX_ERR ;
 TYPE_1__ fsl_mpic_err_chip ;
 int ioremap (scalar_t__,int) ;
 int pr_err (char*) ;

int mpic_setup_error_int(struct mpic *mpic, int intvec)
{
 int i;

 mpic->err_regs = ioremap(mpic->paddr + MPIC_ERR_INT_BASE, 0x1000);
 if (!mpic->err_regs) {
  pr_err("could not map mpic error registers\n");
  return -ENOMEM;
 }
 mpic->hc_err = fsl_mpic_err_chip;
 mpic->hc_err.name = mpic->name;
 mpic->flags |= MPIC_FSL_HAS_EIMR;

 for (i = MPIC_MAX_ERR - 1; i >= 0; i--)
  mpic->err_int_vecs[i] = intvec--;

 return 0;
}
