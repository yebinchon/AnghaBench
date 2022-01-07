
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__** table; } ;
typedef TYPE_2__ segindex ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_bool ;
struct TYPE_10__ {TYPE_2__* index; } ;
typedef TYPE_3__ htable ;
struct TYPE_8__ {int val; int key; } ;


 int FALSE ;
 size_t HT_MASK (TYPE_2__*) ;
 int TRUE ;
 scalar_t__ ht_hash_equal (int *,TYPE_3__*,int ,int ) ;
 size_t ht_hash_func (int *,TYPE_3__*,int ) ;
 int mrb_undef_p (int ) ;

__attribute__((used)) static mrb_bool
ht_index_get(mrb_state *mrb, htable *t, mrb_value key, mrb_value *vp)
{
  segindex *index = t->index;
  size_t mask = HT_MASK(index);
  size_t k = ht_hash_func(mrb, t, key) & mask;
  size_t step = 0;

  while (index->table[k]) {
    mrb_value key2 = index->table[k]->key;
    if (!mrb_undef_p(key2) && ht_hash_equal(mrb, t, key, key2)) {
      if (vp) *vp = index->table[k]->val;
      return TRUE;
    }
    k = (k+(++step)) & mask;
  }
  return FALSE;
}
