
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ht_entry_struct {int dummy; } ;
typedef TYPE_1__* ht_t ;
typedef TYPE_2__* ht_entry_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_6__ {size_t num_buckets; TYPE_2__** buckets; int num_keys; } ;


 int free (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;

void ht_clear(ht_t self) {
  size_t i;
  for (i = 0; i < self->num_buckets; i++) {
    ht_entry_t curr = self->buckets[i];
    while (curr) {
      ht_entry_t next = curr->next;
      memset(curr, 0, sizeof(struct ht_entry_struct));
      free(curr);
      self->num_keys--;
      curr = next;
    }
    self->buckets[i] = ((void*)0);
  }
}
