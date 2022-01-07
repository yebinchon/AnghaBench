
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc_opcode {unsigned int opcode; float* name; int* args; } ;
typedef enum sparc_iname { ____Placeholder_sparc_iname } sparc_iname ;





 int ARG_NONE ;





 unsigned int DISP22 (int) ;
 unsigned int DISP30 (int) ;
 unsigned int IMM22 (int) ;
 unsigned int RD (int) ;
 unsigned int RS1 (int) ;
 unsigned int RS2 (int) ;
 unsigned int SIMM13 (int) ;
 unsigned int SWTRAP (int) ;
 struct sparc_opcode* sparc_opcodes ;
 int vimm (int,int,int ,int,int) ;

__attribute__((used)) static unsigned int sparc_assemble(enum sparc_iname iname, const int argc, const int *argv)
{
 const struct sparc_opcode *op = &sparc_opcodes[iname];
 unsigned int insn = op->opcode;
 int i, flt, rd_flt;

 flt = (op->name[0] == 'f');
 rd_flt = flt || (op->name[2] == 'f');

 for (i = 0; op->args[i] != ARG_NONE; i++) {
  int val = argv[i];

  switch (op->args[i]) {
  case 131: insn |= RS1(val); break;
  case 130: insn |= RS2(val); break;
  case 132: insn |= RD(val); break;
  case 129: insn |= SIMM13(val); vimm(val,13,0,1,i); break;
  case 134: insn |= DISP30(val); vimm(val,30,0,1,i); break;
  case 133: insn |= IMM22(val); vimm(val,22,0,0,i); break;
  case 135: insn |= DISP22(val); vimm(val,22,0,1,i); break;
  case 128: insn |= SWTRAP(val); vimm(val,7,0,0,i); break;
  }
 }

 return insn;
}
