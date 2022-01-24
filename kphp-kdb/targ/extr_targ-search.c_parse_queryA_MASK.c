#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ complexity; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef  TYPE_1__ query_t ;

/* Variables and functions */
 int /*<<< orphan*/  Qs ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  q_and ; 
 char FUNC2 () ; 

query_t *FUNC3 (int mode) {
  query_t *A, *B, *C;
  A = FUNC1 (mode);
  if (!A) { return A; }
  while (FUNC2() == '&') {
    Qs++;
    B = FUNC1 (mode);
    if (!B) { return B; }
    C = FUNC0 (q_and, 0);
    if (!C) { return C; }
    C->left = A;
    C->right = B;
    C->complexity = A->complexity + B->complexity;
    A = C;
  }
  return A;
}