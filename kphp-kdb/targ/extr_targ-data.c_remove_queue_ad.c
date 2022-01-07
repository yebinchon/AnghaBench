
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct advert {TYPE_1__* prev; TYPE_1__* next; } ;
struct TYPE_2__ {struct TYPE_2__* next; struct TYPE_2__* prev; } ;



inline void remove_queue_ad (struct advert *A) {
  if (A->next) {
    A->next->prev = A->prev;
    A->prev->next = A->next;
    A->next = A->prev = 0;
  }
}
