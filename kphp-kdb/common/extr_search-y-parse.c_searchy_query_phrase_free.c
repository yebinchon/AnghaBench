
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ searchy_query_phrase_t ;


 int zfree (TYPE_1__*,int) ;

void searchy_query_phrase_free (searchy_query_phrase_t *P) {
  while (P) {
    searchy_query_phrase_t *W = P->next;
    zfree (P, sizeof (*P));
    P = W;
  }
}
