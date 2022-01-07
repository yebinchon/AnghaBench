
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* first; } ;
struct TYPE_4__ {scalar_t__ op; TYPE_2__ subfn; struct TYPE_4__* next; } ;
typedef TYPE_1__ inst ;
typedef TYPE_2__ block ;


 scalar_t__ CLOSURE_CREATE_C ;

__attribute__((used)) static int count_cfunctions(block b) {
  int n = 0;
  for (inst* i = b.first; i; i = i->next) {
    if (i->op == CLOSURE_CREATE_C) n++;
    n += count_cfunctions(i->subfn);
  }
  return n;
}
