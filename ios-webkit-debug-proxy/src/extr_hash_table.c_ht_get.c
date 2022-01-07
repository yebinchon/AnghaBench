
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ht_t ;
typedef TYPE_1__* ht_entry_t ;
struct TYPE_5__ {void* key; void* value; struct TYPE_5__* next; } ;


 int ht_find (int ,void const*,int *,TYPE_1__***,TYPE_1__**,TYPE_1__**) ;

void *ht_get(ht_t self, const void *key, int want_key) {
  ht_entry_t *head;
  ht_entry_t prev;
  ht_entry_t curr;
  ht_find(self, key, ((void*)0), &head, &prev, &curr);
  if (!curr) {
    return ((void*)0);
  }
  if (prev) {

    prev->next = curr->next;
    curr->next = *head;
    *head = curr;
  }
  return (want_key ? curr->key : curr->value);
}
