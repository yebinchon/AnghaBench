
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ht_struct {int dummy; } ;
typedef TYPE_1__* ht_t ;
typedef int ht_entry_t ;
typedef enum ht_key_type { ____Placeholder_ht_key_type } ht_key_type ;
struct TYPE_4__ {int on_cmp; int on_hash; int num_buckets; int * buckets; } ;


 int HT_STRING_KEYS ;
 int NUM_BUCKETS ;
 scalar_t__ calloc (int ,int) ;
 int malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int on_strcmp ;
 int on_strhash ;

ht_t ht_new(enum ht_key_type type) {
  ht_t self = (ht_t)malloc(sizeof(struct ht_struct));
  if (self) {
    memset(self, 0, sizeof(struct ht_struct));
    self->num_buckets = NUM_BUCKETS;
    self->buckets = (ht_entry_t *)calloc(self->num_buckets,
        sizeof(ht_entry_t));
    if (type == HT_STRING_KEYS) {
      self->on_hash = on_strhash;
      self->on_cmp = on_strcmp;
    }
  }
  return self;
}
