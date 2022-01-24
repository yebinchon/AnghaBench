#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ size; TYPE_1__* e; struct TYPE_13__* next; } ;
typedef  TYPE_2__ segment ;
struct TYPE_14__ {scalar_t__ size; size_t capa; TYPE_1__** table; } ;
typedef  TYPE_3__ segindex ;
typedef  void* mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_15__ {scalar_t__ last_len; int /*<<< orphan*/  size; TYPE_2__* lastseg; TYPE_3__* index; } ;
typedef  TYPE_4__ htable ;
struct TYPE_12__ {void* val; void* key; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,void*,void*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(mrb_state *mrb, htable *t, mrb_value key, mrb_value val)
{
  segindex *index = t->index;
  size_t k, sp, step = 0, mask;
  segment *seg;

  if (index->size >= FUNC1(index->capa)) {
    /* need to expand table */
    FUNC2(mrb, t);
    index = t->index;
  }
  mask = FUNC0(index);
  sp = index->capa;
  k = FUNC4(mrb, t, key) & mask;
  while (index->table[k]) {
    mrb_value key2 = index->table[k]->key;
    if (FUNC5(key2)) {
      if (sp == index->capa) sp = k;
    }
    else if (FUNC3(mrb, t, key, key2)) {
      index->table[k]->val = val;
      return;
    }
    k = (k+(++step)) & mask;
  }
  if (sp < index->capa) {
    k = sp;
  }

  /* put the value at the last */
  seg = t->lastseg;
  if (t->last_len < seg->size) {
    index->table[k] = &seg->e[t->last_len++];
  }
  else {                        /* append a new segment */
    seg->next = FUNC6(mrb, seg);
    seg = seg->next;
    seg->next = NULL;
    t->lastseg = seg;
    t->last_len = 1;
    index->table[k] = &seg->e[0];
  }
  index->table[k]->key = key;
  index->table[k]->val = val;
  index->size++;
  t->size++;
}