
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct union_iterator {void** H; } ;
struct intersection_condition_iterator {void** A; void* Cond; } ;
struct TYPE_12__ {int type; int flags; scalar_t__ value; scalar_t__ value2; int hash; int hash2; struct TYPE_12__* left; struct TYPE_12__* right; struct TYPE_12__* last; } ;
typedef TYPE_1__ query_t ;
typedef void* iterator_t ;


 scalar_t__ Q_IS_BIG (TYPE_1__*) ;
 int Q_IS_GRAYISH (TYPE_1__*) ;
 int Q_IS_SMALL (TYPE_1__*) ;
 int Q_IS_SMALLISH (TYPE_1__*) ;
 void* apply_quantifier (int,TYPE_1__*) ;
 int assert (int) ;
 int aux_userlist ;
 int aux_userlist_size ;
 void* build_binary_intersection_iterator (void*,void*) ;
 void* build_binary_subtraction_iterator (void*,void*) ;
 void* build_binary_union_iterator (void*,void*) ;
 void* build_complement_iterator (void*) ;
 void* build_condition_filter_iterator (void*,void*) ;
 void* build_condition_from_query (TYPE_1__*,int) ;
 void* build_condition_iterator (void*) ;
 void* build_empty_iterator () ;
 void* build_explicit_list_iterator (int ,int ) ;
 void* build_id_range_iterator (scalar_t__,scalar_t__) ;
 void* build_multiple_intersection_iterator (void*) ;
 void* build_multiple_intersection_iterator_with_subtraction (void*) ;
 void* build_multiple_union_iterator (void*) ;
 void* build_word_iterator (int) ;
 int get_word_count_nomult (int) ;
 TYPE_1__* lift_quantifier (int,TYPE_1__*) ;
 int negate_query (TYPE_1__*) ;
 scalar_t__ prebuild_multiple_intersection_iterator (int) ;
 void* prebuild_multiple_union_iterator (int) ;
 int q_and ;
 int q_false ;
 int q_id ;
 int q_inlist ;
 int q_name ;
 int q_name_interests ;
 int q_none ;
 int q_or ;

iterator_t build_iterator_from_query (query_t *Q, int flags) {
  int op = Q->type;

  if (Q_IS_GRAYISH (Q)) {



    return build_condition_iterator (build_condition_from_query (Q, flags & 1));
  }

  if (Q_IS_SMALL (Q)) {
    assert (!(Q->flags & 1));

    if (op == q_and || op == q_or) {
      query_t *A = Q;
      int N = 2, gray = 0, big = 0;
      while (A != Q->last) {
 A = A->right;
 N++;
      }
      if (op == q_or) {

 if (N == 2) {
   assert (Q_IS_SMALL (Q->left) && Q_IS_SMALL (Q->right));
   return build_binary_union_iterator (build_iterator_from_query (Q->left, flags), build_iterator_from_query (Q->right, flags));
 }
 iterator_t I = prebuild_multiple_union_iterator (N);
 long i = 1;
 for (A = Q; i < N; A = A->right, i++) {
   assert (Q_IS_SMALL (A->left));
   ((struct union_iterator *) I)->H[i] = build_iterator_from_query (A->left, flags);
 }
 assert (Q_IS_SMALL (A));
 ((struct union_iterator *) I)->H[i] = build_iterator_from_query (A, flags);
 return build_multiple_union_iterator (I);
      }
      if (op == q_and) {
 if (Q_IS_GRAYISH (A->right)) {
   gray++;
   N--;
 } else if (Q_IS_BIG (A->right)) {
   big++;
   N--;
   if (Q_IS_GRAYISH (A->left)) {
     gray++;
     N--;
   }
 }

 assert (N > 0);
 if (N == 1) {
   assert (Q_IS_SMALL (Q->left));
   if (big) {
     negate_query (Q->right);
     iterator_t I = build_binary_subtraction_iterator (build_iterator_from_query (Q->left, flags), build_iterator_from_query (Q->right, flags));
     negate_query (Q->right);
     return I;
   }
   assert (Q_IS_GRAYISH (Q->right));
   return build_condition_filter_iterator (build_iterator_from_query (Q->left, flags), build_condition_from_query (Q->right, flags & 1));
 }
 if (N == 2 && !big && !gray) {
   assert (Q_IS_SMALL (Q->left) && Q_IS_SMALL (Q->right));
   return build_binary_intersection_iterator (build_iterator_from_query (Q->left, flags), build_iterator_from_query (Q->right, flags));
 }
 struct intersection_condition_iterator *ICI = (void *) prebuild_multiple_intersection_iterator (N + big);
 long i = 0;
 for (A = Q; i < N - 1; A = A->right, i++) {
   assert (Q_IS_SMALL (A->left));
   ICI->A[i] = build_iterator_from_query (A->left, flags);
 }
 if (!big && !gray) {
   assert (Q_IS_SMALL (A));
   ICI->A[i] = build_iterator_from_query (A, flags);
   return build_multiple_intersection_iterator ((iterator_t) ICI);
 }
 assert (Q_IS_SMALL (A->left));
 ICI->A[i] = build_iterator_from_query (A->left, flags);
 A = A->right;
 if (!big) {
   ICI->Cond = build_condition_from_query (A, flags & 1);
   return build_multiple_intersection_iterator ((iterator_t) ICI);
 }
 if (gray) {
   assert (Q_IS_GRAYISH (A->left));
   ICI->Cond = build_condition_from_query (A->left, flags & 1);
   A = A->right;
 }
 negate_query (A);
 ICI->A[N] = build_iterator_from_query (A, flags);
 negate_query (A);
 return build_multiple_intersection_iterator_with_subtraction ((iterator_t) ICI);
      }
      assert (0);
    }
    if (op == q_false) {
      return build_empty_iterator ();
    }
    if (op == q_inlist) {
      return build_explicit_list_iterator (aux_userlist, aux_userlist_size);
    }
    if (Q->flags & 24) {

      if (Q->type == q_id) {
 return build_id_range_iterator (Q->value, Q->value2);
      }


      if (Q->flags & 16) {
 assert (Q->value == Q->value2);
      }
      assert (Q->hash);
      return build_word_iterator (Q->hash);
    }
    if (Q->flags & 32) {

      if (Q->type == q_name) {
 return build_word_iterator (Q->hash);
      } else if (Q->type == q_name_interests) {
 if (!get_word_count_nomult (Q->hash2)) {
   return build_word_iterator (Q->hash);
 } else if (!get_word_count_nomult (Q->hash)) {
   return build_word_iterator (Q->hash2);
 }
 return build_binary_union_iterator (build_word_iterator (Q->hash), build_word_iterator (Q->hash2));
      }

      return build_word_iterator (Q->hash2);
    }
    if (Q->flags & 2) {

      if (Q->left->type == q_or && !(Q->left->flags & 1)) {



 query_t *A = Q->left;
 while (A->type == q_or && !(A->flags & 1)) {
   assert (Q_IS_SMALLISH (A->left));
   A->left = apply_quantifier (Q->type, A->left);
   A = A->right;
 }
 assert (A == Q->left->last->right);
 assert (Q_IS_SMALLISH (A));
 Q->left->last->right = apply_quantifier (Q->type, A);
 Q->type = q_none;



 return build_iterator_from_query (Q->left, flags);
      }

      if (Q->left->flags & 56) {
 return build_iterator_from_query (Q->left, flags);
      }

      assert (Q->left->type == q_and && !(Q->left->flags & 1));



      query_t *R = lift_quantifier (Q->type, Q->left);



      if (R) {
 return build_condition_filter_iterator (build_iterator_from_query (R, flags), build_condition_from_query (Q, flags & 1));
      }
      assert (0);
    }
    assert (0);
  }
  if (Q_IS_BIG (Q)) {
    negate_query (Q);
    iterator_t A = build_iterator_from_query (Q, flags);
    negate_query (Q);
    return build_complement_iterator (A);
  }

  assert (0);
}
