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
struct item {scalar_t__ plus_unsure; struct item* left; scalar_t__ minus_unsure; scalar_t__ delta; struct item* right; } ;

/* Variables and functions */
 int FUNC0 (struct item*,struct item*) ; 
 int /*<<< orphan*/  FUNC1 (struct item*,int*) ; 

__attribute__((used)) static void FUNC2 (struct item *T, struct item *L, int Z[3]) {
  if (!T) { return; }
  int c = FUNC0 (T, L);
  if (c > 0) {
    FUNC2 (T->left, L, Z);
  } else {
    if (c) {
      FUNC2 (T->right, L, Z);
      FUNC1 (T, Z);
    }
    if (T->left) {
      Z[0] += T->left->delta;
      Z[1] += T->left->minus_unsure;
      Z[2] += T->left->plus_unsure;
    }
  }
}