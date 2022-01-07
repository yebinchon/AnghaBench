
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;
struct src_insn {int dst_reg_flags; TYPE_1__ arg; int i_count; } ;
struct func_info {int dummy; } ;


 int G0 ;
 int LDFI ;
 int ORI ;
 int REG_FLAGS_FLOAT ;
 int SETHI ;
 int end_emit (struct func_info* const) ;
 int fFIRST (struct func_info* const) ;
 int in (int ,int,int,...) ;
 int rFIRST (struct func_info* const) ;
 int rVMDATA ;
 int sparc_push_data (struct func_info* const,int) ;
 int start_emit (struct func_info* const,int ) ;

__attribute__((used)) static void do_emit_const(struct func_info * const fp, struct src_insn *sp)
{
 start_emit(fp, sp->i_count);
 if (sp->dst_reg_flags & REG_FLAGS_FLOAT) {
  in(LDFI, rVMDATA, sparc_push_data(fp, sp->arg.i), fFIRST(fp));
 } else {
  if ((sp->arg.i & ~0x3ff) == 0) {
   in(ORI, G0, sp->arg.i & 0x3ff, rFIRST(fp));
  } else if ((sp->arg.i & 0x3ff) == 0) {
   in(SETHI, sp->arg.i >> 10, rFIRST(fp));
  } else {
   in(SETHI, sp->arg.i >> 10, rFIRST(fp));
   in(ORI, rFIRST(fp), sp->arg.i & 0x3ff, rFIRST(fp));
  }
 }
 end_emit(fp);
}
