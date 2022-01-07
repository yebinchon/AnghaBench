
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i; scalar_t__ len; scalar_t__ val; int * ptr; } ;
typedef TYPE_1__ bcode_iterator ;


 scalar_t__ bcode_iter_get_val (TYPE_1__*,scalar_t__) ;

void bcode_iter_next (bcode_iterator *it) {
  if (it->ptr != ((void*)0) && it->i + 1 < it->len) {
    it->val = bcode_iter_get_val (it, ++it->i);
  } else {
    it->val = 0;
  }
}
