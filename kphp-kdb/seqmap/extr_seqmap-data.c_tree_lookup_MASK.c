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
 int FUNC1 (int,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int,int) ; 

__attribute__((used)) static struct item *FUNC3 (struct item *T, int key_len, const int *key) {
  int c;
  int lc = 1;
  int rc = 1;
  while (T && (c = FUNC1 (key_len, key, T->key_len, T->key, FUNC2 (lc, rc) - 1))) {
//  while (T && (c = key_cmp2 (key_len, key, T->key_len, T->key, 0))) {
    T = (c < 0) ? T->left : T->right;
    if (c < 0) {
      rc = -c;
    } else {
      FUNC0 (c > 0);
      lc = c;
    }
  }
  return T;
}