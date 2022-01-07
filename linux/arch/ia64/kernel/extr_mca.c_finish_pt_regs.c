
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pt_regs {int r31; int r30; int r29; int r28; int r27; int r26; int r25; int r24; int r23; int r22; int r21; int r20; int r19; int r18; int r17; int r16; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int r3; int r2; int r1; int ar_rsc; int b0; int pr; int cr_ifs; int cr_ipsr; int cr_iip; } ;
struct ia64_sal_os_state {int ifs; int ipsr; int iip; TYPE_1__* pal_min_state; } ;
struct TYPE_3__ {int pmsa_nat_bits; int * pmsa_bank0_gr; int * pmsa_bank1_gr; int const* pmsa_gr; int pmsa_rsc; int pmsa_br0; int pmsa_pr; int pmsa_ifs; int pmsa_ipsr; int pmsa_iip; int pmsa_xfs; int pmsa_xpsr; int pmsa_xip; } ;
typedef TYPE_1__ pal_min_state_area_t ;
struct TYPE_4__ {scalar_t__ bn; scalar_t__ ic; } ;


 int copy_reg (int const*,int ,int *,unsigned long*) ;
 TYPE_2__* ia64_psr (struct pt_regs*) ;

__attribute__((used)) static void
finish_pt_regs(struct pt_regs *regs, struct ia64_sal_os_state *sos,
  unsigned long *nat)
{
 const pal_min_state_area_t *ms = sos->pal_min_state;
 const u64 *bank;




 if (ia64_psr(regs)->ic) {
  regs->cr_iip = ms->pmsa_iip;
  regs->cr_ipsr = ms->pmsa_ipsr;
  regs->cr_ifs = ms->pmsa_ifs;
 } else {
  regs->cr_iip = ms->pmsa_xip;
  regs->cr_ipsr = ms->pmsa_xpsr;
  regs->cr_ifs = ms->pmsa_xfs;

  sos->iip = ms->pmsa_iip;
  sos->ipsr = ms->pmsa_ipsr;
  sos->ifs = ms->pmsa_ifs;
 }
 regs->pr = ms->pmsa_pr;
 regs->b0 = ms->pmsa_br0;
 regs->ar_rsc = ms->pmsa_rsc;
 copy_reg(&ms->pmsa_gr[1-1], ms->pmsa_nat_bits, &regs->r1, nat);
 copy_reg(&ms->pmsa_gr[2-1], ms->pmsa_nat_bits, &regs->r2, nat);
 copy_reg(&ms->pmsa_gr[3-1], ms->pmsa_nat_bits, &regs->r3, nat);
 copy_reg(&ms->pmsa_gr[8-1], ms->pmsa_nat_bits, &regs->r8, nat);
 copy_reg(&ms->pmsa_gr[9-1], ms->pmsa_nat_bits, &regs->r9, nat);
 copy_reg(&ms->pmsa_gr[10-1], ms->pmsa_nat_bits, &regs->r10, nat);
 copy_reg(&ms->pmsa_gr[11-1], ms->pmsa_nat_bits, &regs->r11, nat);
 copy_reg(&ms->pmsa_gr[12-1], ms->pmsa_nat_bits, &regs->r12, nat);
 copy_reg(&ms->pmsa_gr[13-1], ms->pmsa_nat_bits, &regs->r13, nat);
 copy_reg(&ms->pmsa_gr[14-1], ms->pmsa_nat_bits, &regs->r14, nat);
 copy_reg(&ms->pmsa_gr[15-1], ms->pmsa_nat_bits, &regs->r15, nat);
 if (ia64_psr(regs)->bn)
  bank = ms->pmsa_bank1_gr;
 else
  bank = ms->pmsa_bank0_gr;
 copy_reg(&bank[16-16], ms->pmsa_nat_bits, &regs->r16, nat);
 copy_reg(&bank[17-16], ms->pmsa_nat_bits, &regs->r17, nat);
 copy_reg(&bank[18-16], ms->pmsa_nat_bits, &regs->r18, nat);
 copy_reg(&bank[19-16], ms->pmsa_nat_bits, &regs->r19, nat);
 copy_reg(&bank[20-16], ms->pmsa_nat_bits, &regs->r20, nat);
 copy_reg(&bank[21-16], ms->pmsa_nat_bits, &regs->r21, nat);
 copy_reg(&bank[22-16], ms->pmsa_nat_bits, &regs->r22, nat);
 copy_reg(&bank[23-16], ms->pmsa_nat_bits, &regs->r23, nat);
 copy_reg(&bank[24-16], ms->pmsa_nat_bits, &regs->r24, nat);
 copy_reg(&bank[25-16], ms->pmsa_nat_bits, &regs->r25, nat);
 copy_reg(&bank[26-16], ms->pmsa_nat_bits, &regs->r26, nat);
 copy_reg(&bank[27-16], ms->pmsa_nat_bits, &regs->r27, nat);
 copy_reg(&bank[28-16], ms->pmsa_nat_bits, &regs->r28, nat);
 copy_reg(&bank[29-16], ms->pmsa_nat_bits, &regs->r29, nat);
 copy_reg(&bank[30-16], ms->pmsa_nat_bits, &regs->r30, nat);
 copy_reg(&bank[31-16], ms->pmsa_nat_bits, &regs->r31, nat);
}
