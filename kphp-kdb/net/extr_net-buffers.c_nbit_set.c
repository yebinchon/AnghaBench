
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int netbuffer_t ;
struct TYPE_4__ {int * head; } ;
typedef TYPE_1__ nb_iterator_t ;


 int nbit_rewind (TYPE_1__*) ;

int nbit_set (nb_iterator_t *I, netbuffer_t *H) {
  I->head = H;
  return nbit_rewind (I);
}
