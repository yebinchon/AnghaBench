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
 int /*<<< orphan*/  FUNC0 (struct item*) ; 
 int FUNC1 (int,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct item* FUNC2 (struct item*,struct item*) ; 
 int /*<<< orphan*/  FUNC3 (struct item*) ; 

__attribute__((used)) static struct item *FUNC4 (struct item *T, int key_len, const int *key) {
  int c;
  FUNC0 (T);
  if (!(c = FUNC1 (key_len, key, T->key_len, T->key))) {
    struct item *N = FUNC2 (T->left, T->right);
    FUNC3 (N);
    return N;
  }
  if (c < 0) {
    T->left = FUNC4 (T->left, key_len, key);
  } else {
    T->right = FUNC4 (T->right, key_len, key);
  }
  FUNC3 (T);
  return T;
}