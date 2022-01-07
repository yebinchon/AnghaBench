
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct RBasic {int dummy; } ;
struct TYPE_5__ {TYPE_4__* shared; scalar_t__ capa; } ;
struct TYPE_6__ {TYPE_1__ aux; scalar_t__ len; int * ptr; } ;
struct TYPE_7__ {TYPE_2__ heap; } ;
struct RArray {TYPE_3__ as; } ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
struct TYPE_8__ {int refcnt; } ;


 scalar_t__ ARY_CAPA (struct RArray*) ;
 scalar_t__ ARY_EMBED_P (struct RArray*) ;
 scalar_t__ ARY_LEN (struct RArray*) ;
 int ARY_PTR (struct RArray*) ;
 scalar_t__ ARY_REPLACE_SHARED_MIN ;
 int ARY_SET_LEN (struct RArray*,scalar_t__) ;
 int ARY_SET_SHARED_FLAG (struct RArray*) ;
 scalar_t__ ARY_SHARED_P (struct RArray*) ;
 int ARY_UNSET_EMBED_FLAG (struct RArray*) ;
 int ARY_UNSET_SHARED_FLAG (struct RArray*) ;
 int MRB_FROZEN_P (struct RArray*) ;
 int array_copy (int ,int ,scalar_t__) ;
 int ary_expand_capa (int *,struct RArray*,scalar_t__) ;
 int ary_make_shared (int *,struct RArray*) ;
 int ary_modify_check (int *,struct RArray*) ;
 int mrb_ary_decref (int *,TYPE_4__*) ;
 int mrb_free (int *,int *) ;
 int mrb_write_barrier (int *,struct RBasic*) ;

__attribute__((used)) static void
ary_replace(mrb_state *mrb, struct RArray *a, struct RArray *b)
{
  mrb_int len = ARY_LEN(b);

  ary_modify_check(mrb, a);
  if (a == b) return;
  if (ARY_SHARED_P(a)) {
    mrb_ary_decref(mrb, a->as.heap.aux.shared);
    a->as.heap.aux.capa = 0;
    a->as.heap.len = 0;
    a->as.heap.ptr = ((void*)0);
    ARY_UNSET_SHARED_FLAG(a);
  }
  if (ARY_SHARED_P(b)) {
  shared_b:
    if (ARY_EMBED_P(a)) {
      ARY_UNSET_EMBED_FLAG(a);
    }
    else {
      mrb_free(mrb, a->as.heap.ptr);
    }
    a->as.heap.ptr = b->as.heap.ptr;
    a->as.heap.len = len;
    a->as.heap.aux.shared = b->as.heap.aux.shared;
    a->as.heap.aux.shared->refcnt++;
    ARY_SET_SHARED_FLAG(a);
    mrb_write_barrier(mrb, (struct RBasic*)a);
    return;
  }
  if (!MRB_FROZEN_P(b) && len > ARY_REPLACE_SHARED_MIN) {
    ary_make_shared(mrb, b);
    goto shared_b;
  }
  if (ARY_CAPA(a) < len)
    ary_expand_capa(mrb, a, len);
  array_copy(ARY_PTR(a), ARY_PTR(b), len);
  mrb_write_barrier(mrb, (struct RBasic*)a);
  ARY_SET_LEN(a, len);
}
