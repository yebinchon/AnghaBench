
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_20__ {TYPE_10__* cdr; TYPE_10__* car; } ;
typedef TYPE_2__ node ;
typedef scalar_t__ mrb_sym ;
typedef int mrb_int ;
struct TYPE_21__ {int mrb; } ;
typedef TYPE_3__ codegen_scope ;
struct TYPE_19__ {TYPE_2__* car; } ;
struct TYPE_18__ {TYPE_1__* cdr; int car; } ;


 int OP_ADD ;
 int OP_ARYPUSH ;
 int OP_DIV ;
 int OP_EQ ;
 int OP_GE ;
 int OP_GT ;
 int OP_JMPNIL ;
 int OP_LE ;
 int OP_LT ;
 int OP_MUL ;
 int OP_SEND ;
 int OP_SENDB ;
 int OP_SENDV ;
 int OP_SENDVB ;
 int OP_SUB ;
 int VAL ;
 int codegen (TYPE_3__*,TYPE_10__*,int ) ;
 int cursp () ;
 int dispatch (TYPE_3__*,int) ;
 int gen_addsub (TYPE_3__*,int ,int) ;
 int gen_move (TYPE_3__*,int,int,int) ;
 int gen_values (TYPE_3__*,TYPE_10__*,int ,int) ;
 int genjmp2 (TYPE_3__*,int ,int,int ,int) ;
 int genop_1 (TYPE_3__*,int ,int) ;
 int genop_2 (TYPE_3__*,int ,int,int) ;
 int genop_3 (TYPE_3__*,int ,int,int,int) ;
 char* mrb_sym2name_len (int ,scalar_t__,int*) ;
 int new_sym (TYPE_3__*,scalar_t__) ;
 scalar_t__ nsym (int ) ;
 int pop () ;
 int pop_n (int) ;
 int push () ;

__attribute__((used)) static void
gen_call(codegen_scope *s, node *tree, mrb_sym name, int sp, int val, int safe)
{
  mrb_sym sym = name ? name : nsym(tree->cdr->car);
  int skip = 0;
  int n = 0, noop = 0, sendv = 0, blk = 0;

  codegen(s, tree->car, VAL);
  if (safe) {
    int recv = cursp()-1;
    gen_move(s, cursp(), recv, 1);
    skip = genjmp2(s, OP_JMPNIL, cursp(), 0, val);
  }
  tree = tree->cdr->cdr->car;
  if (tree) {
    n = gen_values(s, tree->car, VAL, sp?1:0);
    if (n < 0) {
      n = noop = sendv = 1;
      push();
    }
  }
  if (sp) {
    if (sendv) {
      gen_move(s, cursp(), sp, 0);
      pop();
      genop_1(s, OP_ARYPUSH, cursp());
      push();
    }
    else {
      gen_move(s, cursp(), sp, 0);
      push();
      n++;
    }
  }
  if (tree && tree->cdr) {
    noop = 1;
    codegen(s, tree->cdr, VAL);
    pop();
    blk = 1;
  }
  push();pop();
  pop_n(n+1);
  {
    mrb_int symlen;
    const char *symname = mrb_sym2name_len(s->mrb, sym, &symlen);

    if (!noop && symlen == 1 && symname[0] == '+' && n == 1) {
      gen_addsub(s, OP_ADD, cursp());
    }
    else if (!noop && symlen == 1 && symname[0] == '-' && n == 1) {
      gen_addsub(s, OP_SUB, cursp());
    }
    else if (!noop && symlen == 1 && symname[0] == '*' && n == 1) {
      genop_1(s, OP_MUL, cursp());
    }
    else if (!noop && symlen == 1 && symname[0] == '/' && n == 1) {
      genop_1(s, OP_DIV, cursp());
    }
    else if (!noop && symlen == 1 && symname[0] == '<' && n == 1) {
      genop_1(s, OP_LT, cursp());
    }
    else if (!noop && symlen == 2 && symname[0] == '<' && symname[1] == '=' && n == 1) {
      genop_1(s, OP_LE, cursp());
    }
    else if (!noop && symlen == 1 && symname[0] == '>' && n == 1) {
      genop_1(s, OP_GT, cursp());
    }
    else if (!noop && symlen == 2 && symname[0] == '>' && symname[1] == '=' && n == 1) {
      genop_1(s, OP_GE, cursp());
    }
    else if (!noop && symlen == 2 && symname[0] == '=' && symname[1] == '=' && n == 1) {
      genop_1(s, OP_EQ, cursp());
    }
    else {
      int idx = new_sym(s, sym);

      if (sendv) {
        genop_2(s, blk ? OP_SENDVB : OP_SENDV, cursp(), idx);
      }
      else {
        genop_3(s, blk ? OP_SENDB : OP_SEND, cursp(), idx, n);
      }
    }
  }
  if (safe) {
    dispatch(s, skip);
  }
  if (val) {
    push();
  }
}
