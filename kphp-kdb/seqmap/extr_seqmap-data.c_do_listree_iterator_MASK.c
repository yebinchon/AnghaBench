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
struct item {struct item* right; int /*<<< orphan*/  min_index_pos; int /*<<< orphan*/  key; int /*<<< orphan*/  key_len; struct item* left; } ;

/* Variables and functions */
 int NODE_TYPE_MINUS ; 
 int NODE_TYPE_PLUS ; 
 scalar_t__ FUNC0 (struct item*) ; 
 scalar_t__ NODE_TYPE_SURE ; 
 int FUNC1 (struct item*) ; 
 scalar_t__ NODE_TYPE_UNSURE ; 
 int NODE_TYPE_ZERO ; 
 int /*<<< orphan*/  __index_pos ; 
 int FUNC2 (struct item*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7 (struct item *T, int left_len, const int *left, int right_len, int *right) {
  if (!T) { return 0; }
  int c = FUNC5 (T->key_len, T->key, left_len, left);
  if (c < 0) {
    return FUNC7 (T->right, left_len, left, right_len, right);
  } else {
    int r = FUNC7 (T->left, left_len, left, right_len, right);
    if (r < 0) { return r; }
    c = FUNC5 (T->key_len, T->key, right_len, right);
    if (c > 0) { return 0; }
    int x = FUNC1 (T);
    if (FUNC0 (T) == NODE_TYPE_UNSURE) {
      if (FUNC4 (T->key_len, T->key) == -2) {
        return -2;
      }
    }
    FUNC3 (FUNC0 (T) == NODE_TYPE_SURE);
    r = FUNC6 (__index_pos, T->min_index_pos);
    if (r < 0) { return r; }
    __index_pos = T->min_index_pos;
    if (x == NODE_TYPE_PLUS) {
      int z = FUNC2 (T);
      if (z < 0) { return z; }
    } else if (x == NODE_TYPE_ZERO) {
      int z = FUNC2 (T);
      if (z < 0) { return z; }
      __index_pos ++;
    } else {
      FUNC3 (x == NODE_TYPE_MINUS);
      __index_pos ++;
    }
    return FUNC7 (T->right, left_len, left, right_len, right);
  }
}