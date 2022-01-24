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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static struct item *FUNC3 (struct item *T, int key_len, const int *key, int lc, int rc) {
  if (!T) {
    return 0;
  }
  int c = FUNC1 (key_len, key, T->key_len, T->key, FUNC2 (lc, rc) - 1);
  if (c <= 0) {
    if (c == 0) { c = -2000; }
    FUNC0 (-c >= FUNC2 (lc, rc));
    return FUNC3 (T->left, key_len, key, lc, -c);
  } else {
    FUNC0 (c >= FUNC2 (lc, rc));
    struct item *N = FUNC3 (T->right, key_len, key, c, rc);
    return N ? N : T;
  }
}