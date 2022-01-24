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
struct tl_combinator_tree {struct tl_combinator_tree* right; struct tl_combinator_tree* left; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tl_combinator_tree*,struct tl_combinator_tree*,int) ; 
 struct tl_combinator_tree* FUNC1 (int) ; 

struct tl_combinator_tree *FUNC2 (struct tl_combinator_tree *T) {
  if (!T) { return 0; }
  struct tl_combinator_tree *S = FUNC1 (sizeof (*S));
  FUNC0 (S, T, sizeof (*S));
  S->left = FUNC2 (T->left);
  S->right = FUNC2 (T->right);
  return S;
}