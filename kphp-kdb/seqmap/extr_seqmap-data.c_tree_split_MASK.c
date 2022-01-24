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
struct item {struct item* right; struct item* left; int /*<<< orphan*/  key; int /*<<< orphan*/  key_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct item*) ; 

__attribute__((used)) static void FUNC2 (struct item **L, struct item **R, struct item *T, int key_len, const int *key) {
  if (!T) { *L = *R = 0; return; }
  if (FUNC0 (key_len, key, T->key_len, T->key) < 0) {
    *R = T;
    FUNC2 (L, &T->left, T->left, key_len, key);
  } else {
    *L = T;
    FUNC2 (&T->right, R, T->right, key_len, key);
  }
  FUNC1 (T);
}