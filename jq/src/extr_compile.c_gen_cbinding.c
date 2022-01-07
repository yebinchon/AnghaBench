
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cfunction {scalar_t__ nargs; int name; } ;
struct TYPE_5__ {struct cfunction const* cfunc; } ;
struct TYPE_6__ {scalar_t__ any_unbound; scalar_t__ nformals; int symbol; TYPE_1__ imm; } ;
typedef TYPE_2__ inst ;
typedef int block ;


 int BLOCK (int ,int ) ;
 int CLOSURE_CREATE_C ;
 int inst_block (TYPE_2__*) ;
 TYPE_2__* inst_new (int ) ;
 int strdup (int ) ;

block gen_cbinding(const struct cfunction* cfunctions, int ncfunctions, block code) {
  for (int cfunc=0; cfunc<ncfunctions; cfunc++) {
    inst* i = inst_new(CLOSURE_CREATE_C);
    i->imm.cfunc = &cfunctions[cfunc];
    i->symbol = strdup(cfunctions[cfunc].name);
    i->nformals = cfunctions[cfunc].nargs - 1;
    i->any_unbound = 0;
    code = BLOCK(inst_block(i), code);
  }
  return code;
}
