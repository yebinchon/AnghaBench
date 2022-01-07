
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int constant; } ;
struct inst {TYPE_1__ imm; int op; scalar_t__ locfile; int arglist; int subfn; struct inst* symbol; } ;
struct TYPE_4__ {int flags; } ;


 int OP_HAS_CONSTANT ;
 int block_free (int ) ;
 int jv_free (int ) ;
 int jv_mem_free (struct inst*) ;
 int locfile_free (scalar_t__) ;
 TYPE_2__* opcode_describe (int ) ;

__attribute__((used)) static void inst_free(struct inst* i) {
  jv_mem_free(i->symbol);
  block_free(i->subfn);
  block_free(i->arglist);
  if (i->locfile)
    locfile_free(i->locfile);
  if (opcode_describe(i->op)->flags & OP_HAS_CONSTANT) {
    jv_free(i->imm.constant);
  }
  jv_mem_free(i);
}
