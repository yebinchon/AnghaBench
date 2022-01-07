
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jv ;
struct TYPE_8__ {int constant; } ;
struct TYPE_9__ {scalar_t__ op; struct TYPE_9__* next; TYPE_1__ imm; } ;
typedef TYPE_2__ inst ;
struct TYPE_10__ {int member_1; int member_0; TYPE_2__* first; } ;
typedef TYPE_3__ block ;


 scalar_t__ INSERT ;
 scalar_t__ JV_KIND_STRING ;
 scalar_t__ LOADK ;
 scalar_t__ PUSHK_UNDER ;
 scalar_t__ SUBEXP_BEGIN ;
 scalar_t__ SUBEXP_END ;
 int block_free (TYPE_3__) ;
 TYPE_3__ gen_const (int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_null () ;
 int jv_object () ;
 int jv_object_set (int ,int ,int ) ;

block gen_const_object(block expr) {
  int is_const = 1;
  jv o = jv_object();
  jv k = jv_null();
  jv v = jv_null();
  for (inst *i = expr.first; i; i = i->next) {
    if (i->op == PUSHK_UNDER) {
      k = jv_copy(i->imm.constant);
      i = i->next;
    } else if (i->op != SUBEXP_BEGIN ||
        i->next == ((void*)0) ||
        i->next->op != LOADK ||
        i->next->next == ((void*)0) ||
        i->next->next->op != SUBEXP_END) {
      is_const = 0;
      break;
    } else {
      k = jv_copy(i->next->imm.constant);
      i = i->next->next->next;
    }
    if (i != ((void*)0) && i->op == PUSHK_UNDER) {
      v = jv_copy(i->imm.constant);
      i = i->next;
    } else if (i == ((void*)0) ||
        i->op != SUBEXP_BEGIN ||
        i->next == ((void*)0) ||
        i->next->op != LOADK ||
        i->next->next == ((void*)0) ||
        i->next->next->op != SUBEXP_END) {
      is_const = 0;
      break;
    } else {
      v = jv_copy(i->next->imm.constant);
      i = i->next->next->next;
    }
    if (i == ((void*)0) || i->op != INSERT) {
      is_const = 0;
      break;
    }
    if (jv_get_kind(k) != JV_KIND_STRING) {
      is_const = 0;
      break;
    }
    o = jv_object_set(o, k, v);
    k = jv_null();
    v = jv_null();
  }
  if (!is_const) {
    jv_free(o);
    jv_free(k);
    jv_free(v);
    block b = {0,0};
    return b;
  }
  block_free(expr);
  return gen_const(o);
}
