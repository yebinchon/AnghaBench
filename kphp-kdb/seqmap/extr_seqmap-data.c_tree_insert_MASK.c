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
struct item {scalar_t__ y; int /*<<< orphan*/  key; int /*<<< orphan*/  key_len; struct item* right; struct item* left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct item**,struct item**,struct item*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct item*) ; 

__attribute__((used)) static struct item *FUNC4 (struct item *T, struct item *N) {
  if (!T) { 
    FUNC3 (N);
    return N;
  }
  int c;
  FUNC0 (c = FUNC1 (N->key_len, N->key, T->key_len, T->key));
  if (T->y >= N->y) {
    if (c < 0) {
      T->left = FUNC4 (T->left, N);
    } else {
      T->right = FUNC4 (T->right, N);
    }
    FUNC3 (T);
    return T;
  }
  FUNC2 (&N->left, &N->right, T, N->key_len, N->key);
  FUNC3 (N);
  return N;
}