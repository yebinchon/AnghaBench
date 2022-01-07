
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* ht_t ;
typedef TYPE_2__* ht_entry_t ;
struct TYPE_10__ {struct TYPE_10__* next; int * value; } ;
struct TYPE_9__ {int num_keys; } ;


 int free (TYPE_2__*) ;
 int ht_find (TYPE_1__*,void const*,int *,TYPE_2__***,TYPE_2__**,TYPE_2__**) ;

void *ht_remove(ht_t self, const void *key) {
  ht_entry_t *head;
  ht_entry_t prev;
  ht_entry_t curr;
  ht_find(self, key, ((void*)0), &head, &prev, &curr);
  void *ret = (curr ? curr->value : ((void*)0));
  if (curr) {
    if (prev) {
      prev->next = curr->next;
    } else {
      *head = curr->next;
    }
    free(curr);
    self->num_keys--;
  }
  return ret;
}
