
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {struct advert* prev; struct advert* next; } ;



inline void insert_queue_ad_before (struct advert *W, struct advert *A) {
  A->next = W;
  A->prev = W->prev;
  W->prev->next = A;
  W->prev = A;
}
