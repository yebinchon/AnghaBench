
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cptr; scalar_t__ head; scalar_t__ cur; } ;
typedef TYPE_1__ nb_iterator_t ;



inline int nbit_clear (nb_iterator_t *I) {
  I->cur = I->head = 0;
  I->cptr = 0;
  return 0;
}
