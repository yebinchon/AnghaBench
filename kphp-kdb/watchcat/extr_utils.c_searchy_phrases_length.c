
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ searchy_query_phrase_t ;



int searchy_phrases_length (searchy_query_phrase_t *cur) {
  int res = 0;
  while (cur != ((void*)0)) {
    res++;
    cur = cur->next;
  }
  return res;
}
