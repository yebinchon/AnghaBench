
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int op; struct TYPE_4__* next; } ;
typedef TYPE_1__ inst ;
struct TYPE_5__ {TYPE_1__* first; } ;
typedef TYPE_2__ block ;





 int assert (int) ;

__attribute__((used)) static int block_count_actuals(block b) {
  int args = 0;
  for (inst* i = b.first; i; i = i->next) {
    switch (i->op) {
    default: assert(0 && "Unknown function type"); break;
    case 130:
    case 128:
    case 129:
      args++;
      break;
    }
  }
  return args;
}
