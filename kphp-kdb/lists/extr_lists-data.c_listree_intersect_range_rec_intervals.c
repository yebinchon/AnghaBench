
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* right; int x; struct TYPE_9__* left; } ;
typedef TYPE_1__ tree_ext_small_t ;
typedef int object_id_t ;
struct TYPE_10__ {int N; } ;
typedef TYPE_2__ listree_t ;


 int LA ;
 TYPE_1__* NIL ;
 int NODE_RPOS (TYPE_1__*) ;
 scalar_t__ NODE_TYPE (TYPE_1__*) ;
 int OARR_ENTRY (int ,int ) ;
 scalar_t__ TF_MINUS ;
 scalar_t__ TF_PLUS ;
 int assert (int) ;
 int listree_intersect_array_rec_intervals (TYPE_2__*,int,int,int ) ;
 scalar_t__ object_id_compare_prefix (int ,int ) ;
 int report_x (int ) ;

__attribute__((used)) static void listree_intersect_range_rec_intervals (tree_ext_small_t *T, listree_t *LT, int a, int b, object_id_t upper_bound) {
  if (T == NIL) {
    listree_intersect_array_rec_intervals (LT, a, b, upper_bound);
    return;
  }

  int N = LT->N;
  int c = N - NODE_RPOS(T);
  int lr = c - 1;
  int rl = c + (NODE_TYPE(T) != TF_PLUS);

  assert (rl <= b + 1);

  if (object_id_compare_prefix (OARR_ENTRY (LA, 0), T->x) <= 0) {
    listree_intersect_range_rec_intervals (T->left, LT, a, lr, T->x);
  }

  if (NODE_TYPE(T) != TF_MINUS) {
    report_x (T->x);
  }

  if (object_id_compare_prefix (OARR_ENTRY (LA, 0), upper_bound) <= 0) {
    listree_intersect_range_rec_intervals (T->right, LT, rl, b, upper_bound);
  }
}
