#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tree_var_value_t ;
struct tl_combinator_tree {scalar_t__ act; scalar_t__ type; scalar_t__ type_len; scalar_t__ type_flags; void* data; struct tl_combinator_tree* right; struct tl_combinator_tree* left; } ;

/* Variables and functions */
 scalar_t__ act_var ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct tl_combinator_tree* FUNC1 (int /*<<< orphan*/ **,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,void*,struct tl_combinator_tree*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,void*,struct tl_combinator_tree*,long long) ; 
 int FUNC5 (struct tl_combinator_tree*,void*,int /*<<< orphan*/ **) ; 
 int FUNC6 (struct tl_combinator_tree*,void*,long long,int /*<<< orphan*/ **) ; 
 scalar_t__ type_num ; 
 scalar_t__ type_num_value ; 
 scalar_t__ type_type ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

int FUNC8 (struct tl_combinator_tree *L, struct tl_combinator_tree *R, tree_var_value_t **T) {
  if (!L || !R) {
    FUNC0 (!L && !R);
    return 1;
  }
  if (R->act == act_var) {
    struct tl_combinator_tree *_ = R; R = L; L = _;
  }
 
  if (L->type == type_type) {
    if (R->type != type_type || L->type_len != R->type_len || L->type_flags != R->type_flags) {
      FUNC7 (3, "Type mistmatch. Error\n");
      return 0;
    }
    if (R->data == (void *)-1l || L->data == (void *)-1l) { return 1;}
    if (L->act == act_var) {
      int x = FUNC5 (R, L->data, T);
      if (x > 0) {
//      if (tl_tree_lookup_value (R, L->data, T) > 0) {
        FUNC7 (3, "Circular reference. Error\n");
        return 0;
      }
      if (x == 0) {
        return 1;
      }
      struct tl_combinator_tree *E = FUNC1 (T, L->data);
      if (!E) {
        FUNC3 (T, L->data, R);
        return 1;
      } else {
        return FUNC8 (E, R, T);
      }
    } else {
      if (L->act != R->act || L->data != R->data) {
        FUNC7 (3, "Type mistmatch. Error\n");
        return 0;
      }
      return FUNC8 (L->left, R->left, T) && FUNC8 (L->right, R->right, T);
    }
  } else {
    FUNC0 (L->type == type_num || L->type == type_num_value);
    if (R->type != type_num && R->type != type_num_value) {
      FUNC7 (3, "Type mistmatch. Error\n");
      return 0;
    }
    FUNC0 (R->type == type_num || R->type == type_num_value);
    if (R->data == (void *)-1l || L->data == (void *)-1l) { return 1;}
    long long x = 0;
    struct tl_combinator_tree *K = L;
    while (1) {
      x += K->type_flags;
      if (K->type == type_num_value) {
        break;
      }
      if (!FUNC1 (T, K->data)) {
        int s = FUNC6 (R, K->data, K->type_flags, T);
        if (s > 0) {
          FUNC7 (3, "Circular reference. Error\n");
          return 0;
        }
        if (s == 0) {
          return 1;
        }
        /*tl_set_var_value_num (T, K->data, R, -x);
        return 1;*/
        break;
      }
      x += FUNC2 (T, K->data);
      K = FUNC1 (T, K->data);
    }
    long long y = 0;
    struct tl_combinator_tree *M = R;
    while (1) {
      y += M->type_flags;
      if (M->type == type_num_value) {
        break;
      }
      if (!FUNC1 (T, M->data)) {
        int s = FUNC6 (L, M->data, M->type_flags, T);
        if (s > 0) {
          FUNC7 (3, "Circular reference. Error\n");
          return 0;
        }
        if (s == 0) {
          return 1;
        }
        /*tl_set_var_value_num (T, M->data, L, -y);
        return 1;*/
        break;
      }
      y += FUNC2 (T, M->data);
      M = FUNC1 (T, M->data);
    }
    if (K->type == type_num_value && M->type == type_num_value) {
      return x == y;     
    }
    if (M->type == type_num_value) {
      FUNC4 (T, K->data, M, -(x - y + M->type_flags));
      return 1;     
    } else if (K->type == type_num_value) {
      FUNC4 (T, M->data, K, -(y - x + K->type_flags));
      return 1;     
    } else {
      if (x >= y) {
        FUNC4 (T, K->data, M, -(x - y + M->type_flags));
      } else {
        FUNC4 (T, M->data, K, -(y - x + K->type_flags));
      }
      return 1;
    }
  }
  return 0;
}