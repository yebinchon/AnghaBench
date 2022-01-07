
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int netbuffer_t ;
struct TYPE_4__ {int * head; } ;
typedef TYPE_1__ nbw_iterator_t ;


 int nbit_rewindw (TYPE_1__*) ;

int nbit_setw (nbw_iterator_t *IW, netbuffer_t *H) {
  IW->head = H;
  return nbit_rewindw (IW);
}
