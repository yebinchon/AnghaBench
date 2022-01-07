
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; int uid; } ;
typedef TYPE_1__ olist_t ;



__attribute__((used)) static inline int online_list_unpack (int *A, olist_t *head) {
  olist_t *tmp = head->next;
  int *PA = A;
  while (tmp != head) {
    *A++ = tmp->uid;
    tmp = tmp->next;
  }
  return A - PA;
}
