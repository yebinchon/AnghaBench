
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ transaction_t ;
typedef TYPE_1__ tlist_t ;



__attribute__((used)) static int get_tlist_size (tlist_t *L) {
  int r = 0;
  transaction_t *T;
  for (T = L->next; T != L; T = T->next) {
    r++;
  }
  return r;
}
