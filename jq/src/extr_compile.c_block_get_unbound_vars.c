
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jv ;
struct TYPE_5__ {TYPE_1__* first; } ;
struct TYPE_4__ {scalar_t__ op; int symbol; int * bound_by; TYPE_2__ subfn; struct TYPE_4__* next; } ;
typedef TYPE_1__ inst ;
typedef TYPE_2__ block ;


 scalar_t__ JV_KIND_OBJECT ;
 scalar_t__ STOREV ;
 scalar_t__ STOREVN ;
 int assert (int) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_object_set (int ,int ,int ) ;
 int jv_string (int ) ;
 int jv_true () ;

__attribute__((used)) static void block_get_unbound_vars(block b, jv *vars) {
  assert(vars != ((void*)0));
  assert(jv_get_kind(*vars) == JV_KIND_OBJECT);
  for (inst* i = b.first; i; i = i->next) {
    if (i->subfn.first) {
      block_get_unbound_vars(i->subfn, vars);
      continue;
    }
    if ((i->op == STOREV || i->op == STOREVN) && i->bound_by == ((void*)0)) {
      *vars = jv_object_set(*vars, jv_string(i->symbol), jv_true());
    }
  }
}
