
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct fpustate {int dummy; } ;
struct TYPE_2__ {unsigned long* gsr; } ;


 struct fpustate* FPUSTATE ;
 int RD (unsigned int) ;
 int RS1 (unsigned int) ;
 int RS2 (unsigned int) ;
 TYPE_1__* current_thread_info () ;
 unsigned long* fpd_regaddr (struct fpustate*,int ) ;
 unsigned long fpd_regval (struct fpustate*,int ) ;

__attribute__((used)) static void bshuffle(struct pt_regs *regs, unsigned int insn)
{
 struct fpustate *f = FPUSTATE;
 unsigned long rs1, rs2, rd_val;
 unsigned long bmask, i;

 bmask = current_thread_info()->gsr[0] >> 32UL;

 rs1 = fpd_regval(f, RS1(insn));
 rs2 = fpd_regval(f, RS2(insn));

 rd_val = 0UL;
 for (i = 0; i < 8; i++) {
  unsigned long which = (bmask >> (i * 4)) & 0xf;
  unsigned long byte;

  if (which < 8)
   byte = (rs1 >> (which * 8)) & 0xff;
  else
   byte = (rs2 >> ((which-8)*8)) & 0xff;
  rd_val |= (byte << (i * 8));
 }

 *fpd_regaddr(f, RD(insn)) = rd_val;
}
