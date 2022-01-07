
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


struct loopinfo {void* pc0; } ;
struct TYPE_33__ {struct TYPE_33__* car; struct TYPE_33__* cdr; } ;
typedef TYPE_2__ node ;
typedef int mrb_sym ;
typedef int mrb_aspec ;
struct TYPE_34__ {int mscope; int ainfo; scalar_t__ pc; TYPE_1__* irep; int mrb; } ;
typedef TYPE_3__ codegen_scope ;
struct TYPE_32__ {int rlen; } ;


 int LOOP_BLOCK ;
 int MRB_ARGS_BLOCK () ;
 int MRB_ARGS_KEY (int,int) ;
 int MRB_ARGS_OPT (int) ;
 int MRB_ARGS_POST (int) ;
 int MRB_ARGS_REQ (int) ;
 int MRB_ARGS_REST () ;
 scalar_t__ NODE_ARGS_TAIL ;
 scalar_t__ NODE_KW_ARG ;
 scalar_t__ NODE_MASGN ;
 int NOVAL ;
 int OP_ENTER ;
 int OP_JMP ;
 int OP_JMPIF ;
 int OP_KARG ;
 int OP_KEYEND ;
 int OP_KEY_P ;
 int OP_RETURN ;
 int VAL ;
 int codegen (TYPE_3__*,TYPE_2__*,int ) ;
 int codegen_error (TYPE_3__*,char*) ;
 int cursp () ;
 int dispatch (TYPE_3__*,int) ;
 int gen_move (TYPE_3__*,int,int,int ) ;
 int gen_return (TYPE_3__*,int ,int) ;
 int gen_vmassignment (TYPE_3__*,TYPE_2__*,int,int ) ;
 int genjmp (TYPE_3__*,int ,int ) ;
 int genjmp2 (TYPE_3__*,int ,int,int ,int ) ;
 int genop_0 (TYPE_3__*,int ) ;
 int genop_2 (TYPE_3__*,int ,int,int ) ;
 int genop_W (TYPE_3__*,int ,int) ;
 int loop_pop (TYPE_3__*,int ) ;
 struct loopinfo* loop_push (TYPE_3__*,int ) ;
 int lv_idx (TYPE_3__*,int ) ;
 int mrb_assert (int) ;
 void* new_label (TYPE_3__*) ;
 int new_sym (TYPE_3__*,int ) ;
 scalar_t__ nint (TYPE_2__*) ;
 int node_len (TYPE_2__*) ;
 int nsym (TYPE_2__*) ;
 int pop () ;
 int raise_error (TYPE_3__*,char*) ;
 int scope_finish (TYPE_3__*) ;
 TYPE_3__* scope_new (int ,TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static int
lambda_body(codegen_scope *s, node *tree, int blk)
{
  codegen_scope *parent = s;
  s = scope_new(s->mrb, s, tree->car);
  if (s == ((void*)0)) {
    raise_error(parent, "unexpected scope");
  }

  s->mscope = !blk;

  if (blk) {
    struct loopinfo *lp = loop_push(s, LOOP_BLOCK);
    lp->pc0 = new_label(s);
  }
  tree = tree->cdr;
  if (tree->car == ((void*)0)) {
    genop_W(s, OP_ENTER, 0);
  }
  else {
    mrb_aspec a;
    int ma, oa, ra, pa, ka, kd, ba;
    int pos, i;
    node *opt;
    node *margs, *pargs;
    node *tail;


    ma = node_len(tree->car->car);
    margs = tree->car->car;
    tail = tree->car->cdr->cdr->cdr->cdr;


    oa = node_len(tree->car->cdr->car);

    ra = tree->car->cdr->cdr->car ? 1 : 0;

    pa = node_len(tree->car->cdr->cdr->cdr->car);
    pargs = tree->car->cdr->cdr->cdr->car;

    ka = tail? node_len(tail->cdr->car) : 0;

    kd = tail && tail->cdr->cdr->car? 1 : 0;

    ba = tail && tail->cdr->cdr->cdr->car ? 1 : 0;

    if (ma > 0x1f || oa > 0x1f || pa > 0x1f || ka > 0x1f) {
      codegen_error(s, "too many formal arguments");
    }
    a = MRB_ARGS_REQ(ma)
      | MRB_ARGS_OPT(oa)
      | (ra? MRB_ARGS_REST() : 0)
      | MRB_ARGS_POST(pa)
      | MRB_ARGS_KEY(ka, kd)
      | (ba? MRB_ARGS_BLOCK() : 0);
    s->ainfo = (((ma+oa) & 0x3f) << 7)
      | ((ra & 0x1) << 6)
      | ((pa & 0x1f) << 1)
      | (kd & 0x1);
    genop_W(s, OP_ENTER, a);

    pos = new_label(s);
    for (i=0; i<oa; i++) {
      new_label(s);
      genjmp(s, OP_JMP, 0);
    }
    if (oa > 0) {
      genjmp(s, OP_JMP, 0);
    }
    opt = tree->car->cdr->car;
    i = 0;
    while (opt) {
      int idx;

      dispatch(s, pos+i*3+1);
      codegen(s, opt->car->cdr, VAL);
      pop();
      idx = lv_idx(s, nsym(opt->car->car));
      gen_move(s, idx, cursp(), 0);
      i++;
      opt = opt->cdr;
    }
    if (oa > 0) {
      dispatch(s, pos+i*3+1);
    }


    if (tail) {
      node *kwds = tail->cdr->car;
      int kwrest = 0;

      if (tail->cdr->cdr->car) {
        kwrest = 1;
      }
      mrb_assert(nint(tail->car) == NODE_ARGS_TAIL);
      mrb_assert(node_len(tail) == 4);

      while (kwds) {
        int jmpif_key_p, jmp_def_set = -1;
        node *kwd = kwds->car, *def_arg = kwd->cdr->cdr->car;
        mrb_sym kwd_sym = nsym(kwd->cdr->car);

        mrb_assert(nint(kwd->car) == NODE_KW_ARG);

        if (def_arg) {
          genop_2(s, OP_KEY_P, cursp(), new_sym(s, kwd_sym));
          jmpif_key_p = genjmp2(s, OP_JMPIF, cursp(), 0, 0);
          codegen(s, def_arg, VAL);
          pop();
          gen_move(s, lv_idx(s, kwd_sym), cursp(), 0);
          jmp_def_set = genjmp(s, OP_JMP, 0);
          dispatch(s, jmpif_key_p);
        }
        genop_2(s, OP_KARG, lv_idx(s, kwd_sym), new_sym(s, kwd_sym));
        if (jmp_def_set != -1) {
          dispatch(s, jmp_def_set);
        }
        i++;

        kwds = kwds->cdr;
      }
      if (tail->cdr->car && !kwrest) {
        genop_0(s, OP_KEYEND);
      }
    }


    if (margs) {
      node *n = margs;

      pos = 1;
      while (n) {
        if (nint(n->car->car) == NODE_MASGN) {
          gen_vmassignment(s, n->car->cdr->car, pos, NOVAL);
        }
        pos++;
        n = n->cdr;
      }
    }
    if (pargs) {
      node *n = margs;

      pos = ma+oa+ra+1;
      while (n) {
        if (nint(n->car->car) == NODE_MASGN) {
          gen_vmassignment(s, n->car->cdr->car, pos, NOVAL);
        }
        pos++;
        n = n->cdr;
      }
    }
  }

  codegen(s, tree->cdr->car, VAL);
  pop();
  if (s->pc > 0) {
    gen_return(s, OP_RETURN, cursp());
  }
  if (blk) {
    loop_pop(s, NOVAL);
  }
  scope_finish(s);
  return parent->irep->rlen - 1;
}
