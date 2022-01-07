
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint8_t ;
typedef size_t uint32_t ;
typedef size_t uint16_t ;
typedef int mrb_state ;
struct TYPE_9__ {int ilen; int* iseq; TYPE_5__* lv; int nlocals; int * syms; struct TYPE_9__** reps; } ;
typedef TYPE_1__ mrb_irep ;
typedef int mrb_code ;
struct TYPE_10__ {int name; } ;
 void* PEEK_B (int ) ;
 size_t PEEK_S (int ) ;
 int irep_argc (TYPE_1__*) ;
 scalar_t__* mrb_insn_size ;
 int * mrb_insn_size1 ;
 int * mrb_insn_size2 ;
 int * mrb_insn_size3 ;
 int potential_upvar_p (TYPE_5__*,size_t,int,int ) ;
 TYPE_1__* search_irep (TYPE_1__*,int,int,TYPE_1__*) ;
 size_t search_variable (int *,int ,int) ;

__attribute__((used)) static void
patch_irep(mrb_state *mrb, mrb_irep *irep, int bnest, mrb_irep *top)
{
  int i;
  uint32_t a;
  uint16_t b;
  uint8_t c;
  mrb_code insn;
  int argc = irep_argc(irep);

  for (i = 0; i < irep->ilen; ) {
    insn = irep->iseq[i];
    switch(insn){
    case 136:
      b = PEEK_S(irep->iseq+i+1);
      patch_irep(mrb, irep->reps[b], bnest + 1, top);
      break;

    case 131:
    case 137:
      a = PEEK_B(irep->iseq+i+1);
      b = PEEK_B(irep->iseq+i+2);
      patch_irep(mrb, irep->reps[b], bnest + 1, top);
      break;

    case 129:
      b = PEEK_B(irep->iseq+i+2);
      c = PEEK_B(irep->iseq+i+3);
      if (c != 0) {
        break;
      }
      else {
        uint16_t arg = search_variable(mrb, irep->syms[b], bnest);
        if (arg != 0) {

          irep->iseq[i] = 132;
          irep->iseq[i+2] = arg >> 8;
          irep->iseq[i+3] = arg & 0xff;
        }
      }
      break;

    case 130:
      a = PEEK_B(irep->iseq+i+1);
      b = PEEK_B(irep->iseq+i+2);

      if (potential_upvar_p(irep->lv, b, argc, irep->nlocals)) {
        uint16_t arg = search_variable(mrb, irep->lv[b - 1].name, bnest);
        if (arg != 0) {

          irep->iseq[i] = insn = 132;
          irep->iseq[i+2] = arg >> 8;
          irep->iseq[i+3] = arg & 0xff;
        }
      }

      if (potential_upvar_p(irep->lv, a, argc, irep->nlocals)) {
        uint16_t arg = search_variable(mrb, irep->lv[a - 1].name, bnest);
        if (arg != 0) {

          irep->iseq[i] = insn = 128;
          irep->iseq[i+1] = (mrb_code)b;
          irep->iseq[i+2] = arg >> 8;
          irep->iseq[i+3] = arg & 0xff;
        }
      }
      break;

    case 132:
      a = PEEK_B(irep->iseq+i+1);
      b = PEEK_B(irep->iseq+i+2);
      c = PEEK_B(irep->iseq+i+3);
      {
        int lev = c+1;
        mrb_irep *tmp = search_irep(top, bnest, lev, irep);
        if (potential_upvar_p(tmp->lv, b, irep_argc(tmp), tmp->nlocals)) {
          uint16_t arg = search_variable(mrb, tmp->lv[b-1].name, bnest);
          if (arg != 0) {

            irep->iseq[i] = 132;
            irep->iseq[i+2] = arg >> 8;
            irep->iseq[i+3] = arg & 0xff;
          }
        }
      }
      break;

    case 128:
      a = PEEK_B(irep->iseq+i+1);
      b = PEEK_B(irep->iseq+i+2);
      c = PEEK_B(irep->iseq+i+3);
      {
        int lev = c+1;
        mrb_irep *tmp = search_irep(top, bnest, lev, irep);
        if (potential_upvar_p(tmp->lv, b, irep_argc(tmp), tmp->nlocals)) {
          uint16_t arg = search_variable(mrb, tmp->lv[b-1].name, bnest);
          if (arg != 0) {

            irep->iseq[i] = 128;
            irep->iseq[i+1] = a;
            irep->iseq[i+2] = arg >> 8;
            irep->iseq[i+3] = arg & 0xff;
          }
        }
      }
      break;

    case 135:
      insn = PEEK_B(irep->iseq+i+1);
      i += mrb_insn_size1[insn]+1;
      continue;
    case 134:
      insn = PEEK_B(irep->iseq+i+1);
      i += mrb_insn_size2[insn]+1;
      continue;
    case 133:
      insn = PEEK_B(irep->iseq+i+1);
      i += mrb_insn_size3[insn]+1;
      continue;
    }
    i+=mrb_insn_size[insn];
  }
}
