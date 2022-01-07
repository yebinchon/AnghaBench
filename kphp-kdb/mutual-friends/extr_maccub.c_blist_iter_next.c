
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* x; int i; int val; } ;
typedef TYPE_1__ blist_iterator ;



void blist_iter_next (blist_iterator *it) {
  if (it->x != ((void*)0) && it->i + 1 <= it->x[0]) {
    it->val = it->x[++it->i];
  } else {
    it->val = 0;
  }
}
