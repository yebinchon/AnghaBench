
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {size_t size; TYPE_1__* e; struct TYPE_12__* next; } ;
typedef TYPE_2__ segment ;
typedef void* mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;
struct TYPE_13__ {size_t last_len; size_t size; int * index; TYPE_2__* lastseg; TYPE_2__* rootseg; } ;
typedef TYPE_3__ htable ;
struct TYPE_11__ {void* val; void* key; } ;


 size_t MRB_HT_INIT_SIZE ;
 int ht_compact (int *,TYPE_3__*) ;
 scalar_t__ ht_hash_equal (int *,TYPE_3__*,void*,void*) ;
 int ht_index (int *,TYPE_3__*) ;
 int ht_index_put (int *,TYPE_3__*,void*,void*) ;
 scalar_t__ mrb_undef_p (void*) ;
 TYPE_2__* segment_alloc (int *,TYPE_2__*) ;

__attribute__((used)) static void
ht_put(mrb_state *mrb, htable *t, mrb_value key, mrb_value val)
{
  segment *seg;
  mrb_int i, deleted = 0;

  if (t == ((void*)0)) return;
  if (t->index) {
    ht_index_put(mrb, t, key, val);
    return;
  }
  seg = t->rootseg;
  while (seg) {
    for (i=0; i<seg->size; i++) {
      mrb_value k = seg->e[i].key;

      if (!seg->next && i >= t->last_len) {
        seg->e[i].key = key;
        seg->e[i].val = val;
        t->last_len = i+1;
        t->size++;
        return;
      }
      if (mrb_undef_p(k)) {
        deleted++;
        continue;
      }
      if (ht_hash_equal(mrb, t, k, key)) {
        seg->e[i].val = val;
        return;
      }
    }
    seg = seg->next;
  }



  if (deleted > 0 && deleted > MRB_HT_INIT_SIZE) {
    ht_compact(mrb, t);
  }
  t->size++;


  if (t->lastseg && t->last_len < t->lastseg->size) {
    seg = t->lastseg;
    i = t->last_len;
  }
  else {

    seg = segment_alloc(mrb, t->lastseg);
    i = 0;
    if (t->rootseg == ((void*)0)) {
      t->rootseg = seg;
    }
    else {
      t->lastseg->next = seg;
    }
    t->lastseg = seg;
  }
  seg->e[i].key = key;
  seg->e[i].val = val;
  t->last_len = i+1;
  if (t->index == ((void*)0) && t->size > MRB_HT_INIT_SIZE*4) {
    ht_index(mrb, t);
  }
}
