
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ht_entry_struct {int dummy; } ;
typedef TYPE_1__* ht_t ;
typedef TYPE_2__* ht_entry_t ;
struct TYPE_11__ {intptr_t hc; struct TYPE_11__* next; int * value; void* key; } ;
struct TYPE_10__ {int num_keys; } ;


 int free (TYPE_2__*) ;
 int ht_find (TYPE_1__*,void*,intptr_t*,TYPE_2__***,TYPE_2__**,TYPE_2__**) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,int ,int) ;

void *ht_put(ht_t self, void *key, void *value) {
  ht_entry_t *head;
  ht_entry_t prev;
  ht_entry_t curr;
  intptr_t hc;
  ht_find(self, key, &hc, &head, &prev, &curr);
  void *ret = (curr ? curr->value : ((void*)0));
  if (curr) {
    if (value) {
      curr->value = value;
    } else {
      if (prev) {
        prev->next = curr->next;
      } else {
        *head = curr->next;
      }
      free(curr);
      self->num_keys--;
    }
  } else if (value) {
    curr = (ht_entry_t)malloc(sizeof(struct ht_entry_struct));

    memset(curr, 0, sizeof(struct ht_entry_struct));
    curr->hc = hc;
    curr->key = key;
    curr->value = value;
    curr->next = *head;
    *head = curr;
    self->num_keys++;
  }
  return ret;
}
