
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {scalar_t__ orig_r28; scalar_t__ kpc; scalar_t__ ksp; int ior; int isr; int iir; int sar; int * iaoq; int * iasq; int * sr; int * fr; int * gr; } ;
struct pdc_hpmc_pim_20 {int * cr; int iaoq_back; int iasq_back; int * sr; int * fr; int * gr; } ;
struct pdc_hpmc_pim_11 {int * cr; int iaoq_back; int iasq_back; int * sr; int * fr; int * gr; } ;
struct TYPE_2__ {scalar_t__ cpu_type; } ;


 TYPE_1__ boot_cpu_data ;
 scalar_t__ pcxu ;

void transfer_pim_to_trap_frame(struct pt_regs *regs)
{
    register int i;
    extern unsigned int hpmc_pim_data[];
    struct pdc_hpmc_pim_11 *pim_narrow;
    struct pdc_hpmc_pim_20 *pim_wide;

    if (boot_cpu_data.cpu_type >= pcxu) {

 pim_wide = (struct pdc_hpmc_pim_20 *)hpmc_pim_data;
 regs->gr[0] = pim_wide->cr[22];

 for (i = 1; i < 32; i++)
     regs->gr[i] = pim_wide->gr[i];

 for (i = 0; i < 32; i++)
     regs->fr[i] = pim_wide->fr[i];

 for (i = 0; i < 8; i++)
     regs->sr[i] = pim_wide->sr[i];

 regs->iasq[0] = pim_wide->cr[17];
 regs->iasq[1] = pim_wide->iasq_back;
 regs->iaoq[0] = pim_wide->cr[18];
 regs->iaoq[1] = pim_wide->iaoq_back;

 regs->sar = pim_wide->cr[11];
 regs->iir = pim_wide->cr[19];
 regs->isr = pim_wide->cr[20];
 regs->ior = pim_wide->cr[21];
    }
    else {
 pim_narrow = (struct pdc_hpmc_pim_11 *)hpmc_pim_data;

 regs->gr[0] = pim_narrow->cr[22];

 for (i = 1; i < 32; i++)
     regs->gr[i] = pim_narrow->gr[i];

 for (i = 0; i < 32; i++)
     regs->fr[i] = pim_narrow->fr[i];

 for (i = 0; i < 8; i++)
     regs->sr[i] = pim_narrow->sr[i];

 regs->iasq[0] = pim_narrow->cr[17];
 regs->iasq[1] = pim_narrow->iasq_back;
 regs->iaoq[0] = pim_narrow->cr[18];
 regs->iaoq[1] = pim_narrow->iaoq_back;

 regs->sar = pim_narrow->cr[11];
 regs->iir = pim_narrow->cr[19];
 regs->isr = pim_narrow->cr[20];
 regs->ior = pim_narrow->cr[21];
    }






    regs->ksp = 0;
    regs->kpc = 0;
    regs->orig_r28 = 0;
}
