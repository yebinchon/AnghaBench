#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* x; struct TYPE_10__* right; struct TYPE_10__* left; } ;
typedef  TYPE_2__ tree_t ;
struct wildcard_entry {int dummy; } ;
struct TYPE_9__ {int key_len; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct wildcard_entry*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int,int /*<<< orphan*/ ,int,scalar_t__) ; 
 TYPE_2__* FUNC6 (TYPE_2__*,TYPE_2__*) ; 

tree_t *FUNC7 (tree_t *T, const char *key, int key_len, int lc, int rc) {
  //vkprintf (1, "%s - %s [%d - %d]\n", key, T ? T->x->key : "NULL", lc, rc);
  if (!T) {
    return 0;
  }
  int c = FUNC5 (key, key_len, T->x->key, T->x->key_len, FUNC4 (FUNC0 (lc), FUNC0 (rc)) - 1);
  FUNC1 (lc > 0);
  if (c == 0) {
    c = key_len + 2; //Infinity
  }
  if (c < 0 || c > lc) {
    T->left = FUNC7 (T->left, key, key_len, lc, -c);
  }
  if (c > 0 && (rc > 0 || -rc > c)) {
    T->right = FUNC7 (T->right, key, key_len, c, rc);
  }
  if (c == 0 || c < -T->x->key_len || c > T->x->key_len) {
    tree_t *N = FUNC6 (T->left, T->right);
    FUNC3 ((struct wildcard_entry *)T->x);
    FUNC2 (T);
    return N;
  } else {
    return T;
  }
}