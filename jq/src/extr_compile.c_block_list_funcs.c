
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int jv ;
struct TYPE_4__ {scalar_t__ op; char* symbol; int nformals; struct TYPE_4__* next; } ;
typedef TYPE_1__ inst ;
struct TYPE_5__ {TYPE_1__* first; } ;
typedef TYPE_2__ block ;


 scalar_t__ CLOSURE_CREATE ;
 scalar_t__ CLOSURE_CREATE_C ;
 int jv_keys_unsorted (int ) ;
 int jv_null () ;
 int jv_object () ;
 int jv_object_set (int ,int ,int ) ;
 int jv_string_fmt (char*,char*,int ) ;

jv block_list_funcs(block body, int omit_underscores) {
  jv funcs = jv_object();
  for (inst *pos = body.first; pos != ((void*)0); pos = pos->next) {
    if (pos->op == CLOSURE_CREATE || pos->op == CLOSURE_CREATE_C) {
      if (pos->symbol != ((void*)0) && (!omit_underscores || pos->symbol[0] != '_')) {
        funcs = jv_object_set(funcs, jv_string_fmt("%s/%i", pos->symbol, pos->nformals), jv_null());
      }
    }
  }
  return jv_keys_unsorted(funcs);
}
