
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int jv ;
struct TYPE_11__ {TYPE_1__* target; int constant; } ;
struct TYPE_13__ {scalar_t__ op; TYPE_2__ imm; struct TYPE_13__* next; } ;
typedef TYPE_4__ inst ;
struct TYPE_14__ {int member_1; int member_0; TYPE_3__* last; TYPE_4__* first; } ;
typedef TYPE_5__ block ;
struct TYPE_12__ {scalar_t__ op; } ;
struct TYPE_10__ {scalar_t__ op; } ;


 scalar_t__ FORK ;
 scalar_t__ JUMP ;
 scalar_t__ LOADK ;
 int block_free (TYPE_5__) ;
 TYPE_5__ gen_const (int ) ;
 int jv_array () ;
 int jv_array_append (int ,int ) ;
 int jv_array_length (int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;

__attribute__((used)) static block gen_const_array(block expr) {
  int all_const = 1;
  int commas = 0;
  int normal = 1;
  jv a = jv_array();
  for (inst *i = expr.first; i; i = i->next) {
    if (i->op == FORK) {
      commas++;
      if (i->imm.target == ((void*)0) || i->imm.target->op != JUMP ||
          jv_array_length(jv_copy(a)) > 0) {
        normal = 0;
        break;
      }
    } else if (all_const && i->op == LOADK) {
      if (i->next != ((void*)0) && i->next->op != JUMP) {
        normal = 0;
        break;
      }
      a = jv_array_append(a, jv_copy(i->imm.constant));
    } else if (i->op != JUMP || i->imm.target == ((void*)0) ||
               i->imm.target->op != LOADK) {
      all_const = 0;
    }
  }

  if (all_const && normal &&
      (expr.last == ((void*)0) || expr.last->op == LOADK) &&
      jv_array_length(jv_copy(a)) == commas + 1) {
    block_free(expr);
    return gen_const(a);
  }

  jv_free(a);
  block b = {0,0};
  return b;
}
