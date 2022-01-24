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
struct item {scalar_t__ y; struct item* left; struct item* right; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct item*) ; 

__attribute__((used)) static struct item *FUNC1 (struct item *L, struct item *R) {
  if (!L) { return R; }
  if (!R) { return L; }
  if (L->y > R->y) {
    L->right = FUNC1 (L->right, R);
    FUNC0 (L);
    return L;
  } else {
    R->left = FUNC1 (L, R->left);
    FUNC0 (R);
    return R;
  }
}