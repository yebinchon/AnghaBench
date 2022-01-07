
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* cdr; TYPE_3__* car; } ;
typedef TYPE_1__ node ;
typedef int codegen_scope ;
struct TYPE_5__ {int car; struct TYPE_5__* cdr; } ;


 int CALL_MAXARGS ;
 scalar_t__ NODE_ARRAY ;
 scalar_t__ NODE_SPLAT ;
 int NOVAL ;
 int OP_ARRAY ;
 int OP_ARYCAT ;
 int OP_ARYPUSH ;
 int VAL ;
 int codegen (int *,TYPE_3__*,int) ;
 int cursp () ;
 int genop_1 (int *,int ,int ) ;
 int genop_2 (int *,int ,int ,int) ;
 scalar_t__ nint (int ) ;
 int pop () ;
 int pop_n (int) ;
 int push () ;

__attribute__((used)) static int
gen_values(codegen_scope *s, node *t, int val, int extra)
{
  int n = 0;
  int is_splat;

  while (t) {
    is_splat = nint(t->car->car) == NODE_SPLAT;
    if (
      n+extra >= CALL_MAXARGS - 1
      || is_splat) {
      if (val) {
        if (is_splat && n == 0 && nint(t->car->cdr->car) == NODE_ARRAY) {
          codegen(s, t->car->cdr, VAL);
          pop();
        }
        else {
          pop_n(n);
          genop_2(s, OP_ARRAY, cursp(), n);
          push();
          codegen(s, t->car, VAL);
          pop(); pop();
          if (is_splat) {
            genop_1(s, OP_ARYCAT, cursp());
          }
          else {
            genop_1(s, OP_ARYPUSH, cursp());
          }
        }
        t = t->cdr;
        while (t) {
          push();
          codegen(s, t->car, VAL);
          pop(); pop();
          if (nint(t->car->car) == NODE_SPLAT) {
            genop_1(s, OP_ARYCAT, cursp());
          }
          else {
            genop_1(s, OP_ARYPUSH, cursp());
          }
          t = t->cdr;
        }
      }
      else {
        while (t) {
          codegen(s, t->car, NOVAL);
          t = t->cdr;
        }
      }
      return -1;
    }

    codegen(s, t->car, val);
    n++;
    t = t->cdr;
  }
  return n;
}
