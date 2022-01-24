#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
struct loopinfo {void* pc0; } ;
struct TYPE_33__ {struct TYPE_33__* car; struct TYPE_33__* cdr; } ;
typedef  TYPE_2__ node ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int mrb_aspec ;
struct TYPE_34__ {int mscope; int ainfo; scalar_t__ pc; TYPE_1__* irep; int /*<<< orphan*/  mrb; } ;
typedef  TYPE_3__ codegen_scope ;
struct TYPE_32__ {int rlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOOP_BLOCK ; 
 int FUNC0 () ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 () ; 
 scalar_t__ NODE_ARGS_TAIL ; 
 scalar_t__ NODE_KW_ARG ; 
 scalar_t__ NODE_MASGN ; 
 int /*<<< orphan*/  NOVAL ; 
 int /*<<< orphan*/  OP_ENTER ; 
 int /*<<< orphan*/  OP_JMP ; 
 int /*<<< orphan*/  OP_JMPIF ; 
 int /*<<< orphan*/  OP_KARG ; 
 int /*<<< orphan*/  OP_KEYEND ; 
 int /*<<< orphan*/  OP_KEY_P ; 
 int /*<<< orphan*/  OP_RETURN ; 
 int /*<<< orphan*/  VAL ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct loopinfo* FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 void* FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (TYPE_2__*) ; 
 int FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_3__*) ; 
 TYPE_3__* FUNC30 (int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC31(codegen_scope *s, node *tree, int blk)
{
  codegen_scope *parent = s;
  s = FUNC30(s->mrb, s, tree->car);
  if (s == NULL) {
    FUNC28(parent, "unexpected scope");
  }

  s->mscope = !blk;

  if (blk) {
    struct loopinfo *lp = FUNC19(s, LOOP_BLOCK);
    lp->pc0 = FUNC22(s);
  }
  tree = tree->cdr;
  if (tree->car == NULL) {
    FUNC17(s, OP_ENTER, 0);
  }
  else {
    mrb_aspec a;
    int ma, oa, ra, pa, ka, kd, ba;
    int pos, i;
    node *opt;
    node *margs, *pargs;
    node *tail;

    /* mandatory arguments */
    ma = FUNC25(tree->car->car);
    margs = tree->car->car;
    tail = tree->car->cdr->cdr->cdr->cdr;

    /* optional arguments */
    oa = FUNC25(tree->car->cdr->car);
    /* rest argument? */
    ra = tree->car->cdr->cdr->car ? 1 : 0;
    /* mandatory arugments after rest argument */
    pa = FUNC25(tree->car->cdr->cdr->cdr->car);
    pargs = tree->car->cdr->cdr->cdr->car;
    /* keyword arguments */
    ka = tail? FUNC25(tail->cdr->car) : 0;
    /* keyword dictionary? */
    kd = tail && tail->cdr->cdr->car? 1 : 0;
    /* block argument? */
    ba = tail && tail->cdr->cdr->cdr->car ? 1 : 0;

    if (ma > 0x1f || oa > 0x1f || pa > 0x1f || ka > 0x1f) {
      FUNC7(s, "too many formal arguments");
    }
    a = FUNC4(ma)
      | FUNC2(oa)
      | (ra? FUNC5() : 0)
      | FUNC3(pa)
      | FUNC1(ka, kd)
      | (ba? FUNC0() : 0);
    s->ainfo = (((ma+oa) & 0x3f) << 7) /* (12bits = 5:1:5:1) */
      | ((ra & 0x1) << 6)
      | ((pa & 0x1f) << 1)
      | (kd & 0x1);
    FUNC17(s, OP_ENTER, a);
    /* generate jump table for optional arguments initializer */
    pos = FUNC22(s);
    for (i=0; i<oa; i++) {
      FUNC22(s);
      FUNC13(s, OP_JMP, 0);
    }
    if (oa > 0) {
      FUNC13(s, OP_JMP, 0);
    }
    opt = tree->car->cdr->car;
    i = 0;
    while (opt) {
      int idx;

      FUNC9(s, pos+i*3+1);
      FUNC6(s, opt->car->cdr, VAL);
      FUNC27();
      idx = FUNC20(s, FUNC26(opt->car->car));
      FUNC10(s, idx, FUNC8(), 0);
      i++;
      opt = opt->cdr;
    }
    if (oa > 0) {
      FUNC9(s, pos+i*3+1);
    }

    /* keyword arguments */
    if (tail) {
      node *kwds = tail->cdr->car;
      int kwrest = 0;

      if (tail->cdr->cdr->car) {
        kwrest = 1;
      }
      FUNC21(FUNC24(tail->car) == NODE_ARGS_TAIL);
      FUNC21(FUNC25(tail) == 4);

      while (kwds) {
        int jmpif_key_p, jmp_def_set = -1;
        node *kwd = kwds->car, *def_arg = kwd->cdr->cdr->car;
        mrb_sym kwd_sym = FUNC26(kwd->cdr->car);

        FUNC21(FUNC24(kwd->car) == NODE_KW_ARG);

        if (def_arg) {
          FUNC16(s, OP_KEY_P, FUNC8(), FUNC23(s, kwd_sym));
          jmpif_key_p = FUNC14(s, OP_JMPIF, FUNC8(), 0, 0);
          FUNC6(s, def_arg, VAL);
          FUNC27();
          FUNC10(s, FUNC20(s, kwd_sym), FUNC8(), 0);
          jmp_def_set = FUNC13(s, OP_JMP, 0);
          FUNC9(s, jmpif_key_p);
        }
        FUNC16(s, OP_KARG, FUNC20(s, kwd_sym), FUNC23(s, kwd_sym));
        if (jmp_def_set != -1) {
          FUNC9(s, jmp_def_set);
        }
        i++;

        kwds = kwds->cdr;
      }
      if (tail->cdr->car && !kwrest) {
        FUNC15(s, OP_KEYEND);
      }
    }

    /* argument destructuring */
    if (margs) {
      node *n = margs;

      pos = 1;
      while (n) {
        if (FUNC24(n->car->car) == NODE_MASGN) {
          FUNC12(s, n->car->cdr->car, pos, NOVAL);
        }
        pos++;
        n = n->cdr;
      }
    }
    if (pargs) {
      node *n = margs;

      pos = ma+oa+ra+1;
      while (n) {
        if (FUNC24(n->car->car) == NODE_MASGN) {
          FUNC12(s, n->car->cdr->car, pos, NOVAL);
        }
        pos++;
        n = n->cdr;
      }
    }
  }

  FUNC6(s, tree->cdr->car, VAL);
  FUNC27();
  if (s->pc > 0) {
    FUNC11(s, OP_RETURN, FUNC8());
  }
  if (blk) {
    FUNC18(s, NOVAL);
  }
  FUNC29(s);
  return parent->irep->rlen - 1;
}